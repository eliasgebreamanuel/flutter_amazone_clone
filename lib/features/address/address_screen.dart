import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/common/widgets/custom_button.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/common/widgets/custom_textfield.dart';
import 'package:flutter_amazone_clone/providers/user_provider.dart';
import 'package:pay/pay.dart';
import 'package:provider/provider.dart';

class AddressScreen extends StatefulWidget {
  static const String routeName = '/address';
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final TextEditingController flatTextEditingController =
      TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final _addressFormKey = GlobalKey<FormState>();
  List<PaymentItem> paymentItems = [];

  void onApplePayResult(res) {}
  void onGooglePayResult(res) {}

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    flatTextEditingController.dispose();
    areaController.dispose();
    pincodeController.dispose();
    cityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var address = context.watch<UserProvider>().user;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
              flexibleSpace: Container(
            decoration:
                const BoxDecoration(gradient: GlobalVariables.appBarGradient),
          ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              if (address.isNotEmpty)
                Column(children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Text(address, style: const TextStyle(fontSize: 18)),
                      )),
                  const SizedBox(height: 20),
                  const Text('OR'),
                  const SizedBox(height: 20),
                ]),
              Form(
                  key: _addressFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: flatTextEditingController,
                        hintText: 'Flat, House no, Building',
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        controller: areaController,
                        hintText: 'Area, Street',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                          controller: pincodeController, hintText: 'Pincode'),
                      const SizedBox(height: 10),
                      CustomTextField(
                          controller: cityController, hintText: 'Town/City'),
                      const SizedBox(height: 10),
                      CustomButton(text: 'Sign Up', onTap: () {})
                    ],
                  )),
              ApplePayButton(
                width: double.infinity,
                style: ApplePayButtonStyle.whiteOutline,
                type: ApplePayButtonType.buy,
                paymentConfigurationAsset: 'applepay.json',
                onPaymentResult: onApplePayResult,
                paymentItems: paymentItems,
                margin: const EdgeInsets.only(top: 15),
                height: 50
              ),
              const SizedBox(height: 10),
              GooglePayButton(
                paymentConfiguration: 'gpay.json',
                onPaymentResult: onGooglePayResult,
                paymentItems: paymentItems,
                height: 50,
                style: GooglePayButtonStyle.black,
                type: GooglePayButtonType.buy
              )
            ],
          ),
        ),
      ),
    );
  }
}

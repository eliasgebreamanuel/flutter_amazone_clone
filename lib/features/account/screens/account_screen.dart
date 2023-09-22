import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/features/account/widgets/below_app_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  get alignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
          flexibleSpace: Container(
            decoration:
                const BoxDecoration(gradient: GlobalVariables.appBarGradient),
          ),
          title: Row(children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/amazon_in.png'),
              width: 120,
              height: 45,
              color: Colors.black,
            ),
            Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row( 

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(Icons.notifications_outlined)),
                      Icon(Icons.search)
                    ]))
          ])),
   
    ),
           body: Column(
            children: const [
              BelowAppBar(),
              SizedBox(height: 10,)
            ],
          ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/features/account/widgets/account_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        AccountButton(text: 'Your Orders', onTap: () {}),
        AccountButton(text: 'Turn Seller', onTap: () {}),
      ]),
      const SizedBox(height: 10),
      Row(children: [
        AccountButton(text: 'Log Out Here', onTap: () {}),
        AccountButton(text: 'Your Wish List', onTap: () {}),
      ]),
    ]);
  }
}
import "package:flutter/material.dart";
import "package:flutter_amazone_clone/constants/global_variables.dart";

class CategoryDealsScreen extends StatefulWidget {
  final String category;
  const CategoryDealsScreen({super.key, required this.category});

  @override
  State<CategoryDealsScreen> createState() => _CategoryDealsScreenState();
}

class _CategoryDealsScreenState extends State<CategoryDealsScreen> {
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
            title: Text(widget.category,
                style: const TextStyle(color: Colors.black))),
      ),
    );
  }
}

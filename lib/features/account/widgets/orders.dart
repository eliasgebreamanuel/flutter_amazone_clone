import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://www.google.com/search?sca_esv=567900165&sxsrf=AM9HkKmtAVMRHqulGxgsS6AN-uMT_ZdHKg:1695505636669&q=unsplash+mac+pc+images&tbm=isch&source=lnms&sa=X&ved=2ahUKEwi0scDZ2sGBAxVnQvEDHae_A8AQ0pQJegQIDRAB&cshid=1695505643660461&biw=1422&bih=972&dpr=0.9#imgrc=-x54nEN44OIhGM',
    'https://www.google.com/search?sca_esv=567900165&sxsrf=AM9HkKmtAVMRHqulGxgsS6AN-uMT_ZdHKg:1695505636669&q=unsplash+mac+pc+images&tbm=isch&source=lnms&sa=X&ved=2ahUKEwi0scDZ2sGBAxVnQvEDHae_A8AQ0pQJegQIDRAB&cshid=1695505643660461&biw=1422&bih=972&dpr=0.9#imgrc=-x54nEN44OIhGM',
    'https://www.google.com/search?sca_esv=567900165&sxsrf=AM9HkKmtAVMRHqulGxgsS6AN-uMT_ZdHKg:1695505636669&q=unsplash+mac+pc+images&tbm=isch&source=lnms&sa=X&ved=2ahUKEwi0scDZ2sGBAxVnQvEDHae_A8AQ0pQJegQIDRAB&cshid=1695505643660461&biw=1422&bih=972&dpr=0.9#imgrc=-x54nEN44OIhGM',
    'https://www.google.com/search?sca_esv=567900165&sxsrf=AM9HkKmtAVMRHqulGxgsS6AN-uMT_ZdHKg:1695505636669&q=unsplash+mac+pc+images&tbm=isch&source=lnms&sa=X&ved=2ahUKEwi0scDZ2sGBAxVnQvEDHae_A8AQ0pQJegQIDRAB&cshid=1695505643660461&biw=1422&bih=972&dpr=0.9#imgrc=-x54nEN44OIhGM',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Text('Your Orders',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
            Container(
                padding: const EdgeInsets.only(right: 15),
                child: Text('See All',
                    style:
                        TextStyle(color: GlobalVariables.selectedNavBarColor))),
          ],
        ),
        Container(
            height: 170,
            padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return SingleProduct(image: list[index]);
                }))
      ],
    );
  }
}

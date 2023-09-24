import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: const Text('Deal of The Day',
              style: TextStyle(fontSize: 20)
            )
          ),
          Image.network('https://plus.unsplash.com/premium_photo-1680127402190-4ec85e040290?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60',
          height: 235,
          fit: BoxFit.fitHeight,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: const Text(
              '\$100',
            style: TextStyle(fontSize: 18)
            )
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
            child: const Text(
              'Elias',
              maxLines: 2,
              overflow: TextOverflow.ellipsis
            )
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Image.network('https://images.unsplash.com/photo-1694445083738-1e1f6104e9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
                Image.network('https://images.unsplash.com/photo-1694445083738-1e1f6104e9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
                Image.network('https://images.unsplash.com/photo-1694445083738-1e1f6104e9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
                Image.network('https://images.unsplash.com/photo-1694445083738-1e1f6104e9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
          
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15
            ).copyWith(left: 15),
            alignment: Alignment.topLeft,
            child: Text(
              'See all deals',
              style: TextStyle(
                color: Colors.cyan[800]
              )
            ),
          )
    
        ],
      ),
    );
  }
}

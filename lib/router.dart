// ignore: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/common/widgets/bottom_bar.dart';
import 'package:flutter_amazone_clone/features/address/address_screen.dart';
import 'package:flutter_amazone_clone/features/admin/screens/add_product_screen.dart';
import 'package:flutter_amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_amazone_clone/features/home/screens/category_deals_screen.dart';
import 'package:flutter_amazone_clone/features/home/screens/home_screens.dart';
import 'package:flutter_amazone_clone/features/product_details/screens/product_details_screen.dart';
import 'package:flutter_amazone_clone/features/search/screens/search_screen.dart';
import 'package:flutter_amazone_clone/models/product.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AuthScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen());
    case BottomBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const BottomBar());
    case AddProductScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AddProductScreen());
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  CategoryDealsScreen( category: category));
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  SearchScreen( searchQuery: searchQuery));
    
    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  ProductDetailScreen( product: product));
       case AddressScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  AddressScreen());
    
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
              body: Center(child: Text('Screen does not exist'))));
  }
}

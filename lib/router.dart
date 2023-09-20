// ignore: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_amazone_clone/features/home/screens/home_screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AuthScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
              body: Center(child: Text('Screen does not exist'))));
  }
}
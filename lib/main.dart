import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_amazone_clone/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Amazone Clone',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen()
      // Scaffold(
      //     appBar: AppBar(
      //       title: const Text('Hello'),
      //     ),
      //     body: 
          // Column(
          //   children: [
          //     const Center(child: Text('Flutter Amazone Clone Home Page')),
          //     Builder(
          //       builder: (context) {
          //         return ElevatedButton(
          //             onPressed: () {
          //               Navigator.pushNamed(context, AuthScreen.routeName);
          //             },
          //             child: Text('Click'));
          //       }
          //     )
          //   ],
          // )
       //  ),
    );
  }
}

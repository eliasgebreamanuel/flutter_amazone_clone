import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/common/widgets/bottom_bar.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/features/admin/screens/admin_screen.dart';
import 'package:flutter_amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_amazone_clone/features/auth/services/auth_service.dart';
import 'package:flutter_amazone_clone/features/home/screens/home_screens.dart';
import 'package:flutter_amazone_clone/providers/user_provider.dart';
import 'package:flutter_amazone_clone/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authService.getUSerData(context: context);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Amazone Clone',
        theme: ThemeData(
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            colorScheme: const ColorScheme.light(
              primary: GlobalVariables.secondaryColor,
            ),
            appBarTheme: const AppBarTheme(
                elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: Provider.of<UserProvider>(context).user.token.isNotEmpty 
        ? Provider.of<UserProvider>(context).user.type == 'user' ? const BottomBar() : const AdminScreen()
        : const AuthScreen()
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

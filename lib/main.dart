import 'package:flutter/material.dart';
import 'package:login_ui/Models/splash_screen.dart';
import 'package:login_ui/Screens/cart.dart';
import 'package:login_ui/Screens/home_page.dart';
import 'package:login_ui/Screens/login_ui.dart';
import 'package:login_ui/Screens/sign_up.dart';
import 'package:login_ui/themes.dart';
import 'package:login_ui/utilis/Routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: routes.splashRoute,
      routes: {
        routes.splashRoute: (context) => Splash_Screen(),
        routes.loginRoute: (context) => Login_App(),
        routes.signupRoute: (context) => signup(),
        routes.homeRoute: (context) => homepage(),
        routes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

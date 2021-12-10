import 'package:flutter/material.dart';
import 'package:flutter_race_app/modules/login/create_account/create_account_page.dart';
import 'package:flutter_race_app/modules/splash/splash_page.dart';

import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tá Caro",
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/login",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/login/create-account": (context) => const CreateAccountPage(),
      },
    ); 
  }
}
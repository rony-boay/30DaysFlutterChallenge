import 'package:crashcourse_1/homepage.dart';
import 'package:crashcourse_1/loginPage.dart';
import 'package:crashcourse_1/utilis/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      // home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        // brightness: Brightness.dark,
      ),
      // themeMode: ThemeMode.dark,
      initialRoute: MyRoutes.loginroute,
      routes: {
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => const LoginPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:retgoo_test/LoginPage.dart';
import 'package:retgoo_test/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
      home: LoginPage(),
      routes: {"/mainpage": (context) => MainPage()},
    );
  }
}

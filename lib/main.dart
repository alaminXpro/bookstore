import 'package:bookstore/pages/CartPage.dart';
import 'package:bookstore/pages/HomePage.dart';
import 'package:bookstore/pages/ItemPage.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          "/": (context) => HomePage(),
          "ItemPage": (context) => ItemPage(),
          "CartPage": (context) => CartPage(),
        }
    );
  }
}
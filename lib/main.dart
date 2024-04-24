import 'package:appmania/screens/bill.dart';
import 'package:appmania/screens/cart_page.dart';
import 'package:appmania/screens/favorite_page.dart';
import 'package:appmania/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'screens/product_detailPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homePage(),
        'product_detailPage': (context) => detailPage(),
        'cart_page': (context) => cartPage(),
        'favorite_page': (context) => favoritePage(),
        'bill': (context) => bill_Page(),
      },
    ),
  );
}

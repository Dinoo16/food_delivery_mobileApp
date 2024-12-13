import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/account_page/login_page/login_page.dart';
import 'package:food_delivery_app/page/account_page/signup_page/signup_page.dart';
import 'package:food_delivery_app/page/bottom_navigation/bottom_navigation.dart';
import 'package:food_delivery_app/page/cart_page/cart_page.dart';
import 'package:food_delivery_app/page/detail_page/detail_page.dart';
import 'package:food_delivery_app/page/forgot_page/forgot_page.dart';
import 'package:food_delivery_app/page/get_started_page/get_started_page.dart';
import 'package:food_delivery_app/page/home_page/home_page.dart';
import 'package:food_delivery_app/page/account_page/recovery_page/recovery_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const GetStartedPage(),
        '/bottomNavigation': (context) => const BottomNavigation(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

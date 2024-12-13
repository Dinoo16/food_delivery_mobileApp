import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/account_page/login_page/login_page.dart';
import 'package:food_delivery_app/page/cart_page/cart_page.dart';
import 'package:food_delivery_app/page/home_page/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<BottomNavigationBarItem> listItems = [
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: ''),
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ''),
  ];
  List<Widget> listPages = [
    const HomePage(),
    const CartPage(),
    const LoginPage(),
  ];
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
        items: listItems,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/apps/style/styles.dart';
import 'package:food_delivery_app/page/account_page/login_page/login_page.dart';
import 'package:food_delivery_app/page/bottom_navigation/bottom_navigation.dart';
import 'package:food_delivery_app/page/home_page/home_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: GlobalStyles.mainContainerDecoration(),
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/food.png'))),
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 60),
              const SizedBox(
                height: 160,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enjoy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Your Food',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 80,
                width: 240,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 24, color: Color(0xff462B96)),
                  ),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}

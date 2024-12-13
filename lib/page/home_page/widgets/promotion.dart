import 'package:flutter/material.dart';

class PromotionHome extends StatelessWidget {
  const PromotionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: 300,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promotions',
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xff9577F2),
                          Color(0xffAD85F7),
                        ])),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Today’s offer',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        Text(
                          'Free Box of Fries',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text('On All Orders above \$150',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),
                    Positioned(
                      right: -25,
                      top: -50,
                      child: Image.asset(
                        'assets/images/fries.png',
                        width: 160,
                        height: 86,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

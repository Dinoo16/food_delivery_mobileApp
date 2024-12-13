// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:food_delivery_app/apps/style/styles.dart';
import 'package:food_delivery_app/models/items.dart';
import 'package:food_delivery_app/page/home_page/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });
  final String name;
  final String image;
  final num price;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
        decoration: GlobalStyles.mainContainerDecoration(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  const Image(
                    image: AssetImage('assets/images/background.png'),
                    width: 330,
                    height: 330,
                  ),
                  SizedBox(
                    width: 320,
                    height: 320,
                    child: Positioned(
                        top: 50,
                        left: 50,
                        child: FittedBox(
                          child: Image(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(35),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(70))),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 100,
                                height: 50,
                                decoration: GlobalStyles.containerDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconTheme(
                                        data: GlobalStyles.IconTheme(
                                            color: Colors.amber),
                                        child: const Icon(Icons.star)),
                                    Container(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        '4.8',
                                        style: GlobalStyles.textStyle(
                                            fontSize: 26, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text('\$$price',
                                  style: GlobalStyles.textStyle(
                                      fontSize: 26,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                name,
                                style: GlobalStyles.textStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration:
                                        GlobalStyles.containerDecoration(),
                                    width: 25,
                                    height: 25,
                                    child: IconTheme(
                                        data: GlobalStyles.IconTheme(size: 15),
                                        child: const Icon(Icons.remove)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '1',
                                    style: GlobalStyles.textStyle(fontSize: 24),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration:
                                        GlobalStyles.containerDecoration(),
                                    width: 25,
                                    height: 25,
                                    child: IconTheme(
                                        data: GlobalStyles.IconTheme(size: 15),
                                        child: const Icon(Icons.remove)),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Big juicy beef burger with cheese lettuce tomato onions and special sauce!',
                        style: GlobalStyles.textStyle(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Add ons',
                            style: GlobalStyles.textStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 30,
                        crossAxisCount: 3,
                        children: List.generate(3, (index) {
                          return GestureDetector(
                            child: Stack(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: GlobalStyles.containerDecoration(
                                      color: const Color(0xffEFEEEE)),
                                  child: Image.asset(
                                      'assets/images/food-plate-1.png'),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration:
                                        GlobalStyles.containerDecoration(
                                      borderRadius: 50,
                                      color: const Color(0xff0E803C),
                                    ),
                                    child: IconTheme(
                                      data: GlobalStyles.IconTheme(),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: TextButton(
                            onPressed: () => print('click checkout button'),
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: GlobalStyles.containerDecoration(),
                              child: const Center(
                                child: Text('Add to Card',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white)),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

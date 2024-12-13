// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:food_delivery_app/models/items.dart';
import 'package:food_delivery_app/page/detail_page/detail_page.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CardModel extends StatelessWidget {
  const CardModel({
    super.key,
    required this.items,
  });

  final List<MealItems> items;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap:
          true, // This makes the GridView take only the necessary height
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      crossAxisSpacing: 30,
      mainAxisSpacing: 30,
      crossAxisCount: 2,
      children: List.generate(items.length, (index) {
        MealItems meal = items[index];
        return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      name: meal.name,
                      price: meal.price,
                      image: meal.image,
                    ),
                  ));
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffEBEBEB),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 130,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(meal.image)),
                        ),
                      ),
                      Container(
                        child: Text(meal.name,
                            style: const TextStyle(fontSize: 18)),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${meal.price}",
                                style: const TextStyle(
                                    fontSize: 18, color: Color(0xffC9AA05)),
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff0E803C),
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  highlightColor:
                                      const Color.fromARGB(255, 7, 58, 27),
                                  onPressed: () => {
                                    Provider.of<CartProvider>(context,
                                            listen: false)
                                        .addToCart(meal)
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ])));
      }),
    );
  }
}

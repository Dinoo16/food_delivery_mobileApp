// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:food_delivery_app/models/items.dart';
import 'package:food_delivery_app/page/home_page/widgets/card_model.dart';

class PopularHome extends StatelessWidget {
  const PopularHome({
    super.key,
    required this.items,
  });
  final List<MealItems> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Popular', style: TextStyle(fontSize: 24)),
          const SizedBox(
            height: 20,
          ),
          CardModel(
            items: items,
          ),
        ],
      ),
    );
  }
}

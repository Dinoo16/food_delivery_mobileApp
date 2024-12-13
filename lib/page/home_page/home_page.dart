import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/items.dart';
import 'package:food_delivery_app/page/home_page/widgets/category.dart';
import 'package:food_delivery_app/page/home_page/widgets/popular.dart';
import 'package:food_delivery_app/page/home_page/widgets/promotion.dart';
import 'package:food_delivery_app/page/home_page/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = 0;
  void _onCategorySelected(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  List<MealItems> getFilteredItems() {
    if (selectedCategoryIndex == 0) {
      return items;
    } else {
      String selectedCategory = categories[selectedCategoryIndex].name;
      return items.where((item) => item.category == selectedCategory).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 36),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 60,
            height: 60,
            child: ClipOval(
              child: Image.asset(
                'assets/images/avatar.jfif',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SearchBarHome(),
              Row(
                children: categories
                    .asMap()
                    .entries
                    .map((entry) => CategoryHome(
                          category: entry.value,
                          index: entry.key,
                          isSelected: selectedCategoryIndex == entry.key,
                          onTap: () => _onCategorySelected(entry.key),
                        ))
                    .toList(),
              ),
              const PromotionHome(),
              PopularHome(items: getFilteredItems()),
            ],
          ),
        ),
      ),
    );
  }
}

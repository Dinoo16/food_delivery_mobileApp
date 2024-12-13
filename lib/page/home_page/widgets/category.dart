import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/items.dart';

class CategoryHome extends StatefulWidget {
  const CategoryHome(
      {super.key,
      required this.category,
      required this.index,
      required this.isSelected,
      required this.onTap});
  final MealCategory category;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  State<CategoryHome> createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: widget.onTap,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: widget.isSelected
                        ? const Color(0xff462B96)
                        : const Color(0xffEFEEEE)),
                child: Image.asset(widget.category.image),
              ),
            ),
            Text(widget.category.name, style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}

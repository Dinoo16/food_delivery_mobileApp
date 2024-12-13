import 'package:flutter/material.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CardItem extends StatelessWidget {
  final String name;
  final String image;
  final num price;
  final String id;
  int quantity;
  CardItem({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.id,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 100,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffEFEEEE),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name),
                    Container(
                      color: Colors.red,
                      width: 25,
                      height: 25,
                      child: IconButton(
                        color: Colors.white,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .removeFromCart(id);
                        },
                        icon: const Icon(Icons.close, size: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      '\$$price',
                      style: const TextStyle(
                        color: Color(0xffC9AA05),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff462B96),
                      ),
                      child: IconButton(
                        color: Colors.white,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .decreaseItem(id);
                        },
                        icon: const Icon(Icons.remove, size: 15),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '$quantity',
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff462B96),
                      ),
                      child: IconButton(
                        color: Colors.white,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .addMoreItem(id);
                        },
                        icon: const Icon(Icons.add, size: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

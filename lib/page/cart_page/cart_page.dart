import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/items.dart';
import 'package:food_delivery_app/page/bottom_navigation/bottom_navigation.dart';
import 'package:food_delivery_app/page/cart_page/widgets/card_item.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.cartItems;

    return Scaffold(
      extendBody: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  '${cartItems.length} items in cart',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              // Display each CartItem
              ...cartItems.map((item) {
                return CardItem(
                  name: item.name,
                  image: item.image,
                  price: item.price,
                  id: item.id,
                  quantity: item.quantity,
                );
              }),
              const SizedBox(height: 30),
              Column(
                children: [
                  const Text('Order Instructions'),
                  const SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total: ',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    '\$${cartProvider.sumPrice}',
                    style: const TextStyle(
                      color: Color(0xffC9AA05),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () => print('click checkout button'),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff462B96),
                  ),
                  child: const Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigation(),
                    ),
                  );
                },
                child: const Text('Back to Menu'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

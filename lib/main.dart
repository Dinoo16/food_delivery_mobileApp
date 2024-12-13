import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/my_app.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

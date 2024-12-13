import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/models/items.dart';

class CartProvider with ChangeNotifier {
  final List<MealItems> _cartItems = [];

  List<MealItems> get cartItems => _cartItems;

  // add product to the cart
  void addToCart(MealItems item) {
    final existingItemIndex =
        _cartItems.indexWhere((cardItem) => cardItem.id == item.id);
    if (existingItemIndex >= 0) {
      _cartItems[existingItemIndex].quantity += 1;
    } else {
      _cartItems.add(item..quantity = 1);
    }

    notifyListeners();
  }

  // increase item
  void addMoreItem(String itemId) {
    final existingItemIndex =
        _cartItems.indexWhere((cartItem) => cartItem.id == itemId);
    if (existingItemIndex >= 0) {
      _cartItems[existingItemIndex].quantity += 1;
    }
    notifyListeners();
  }

  // decrease item
  void decreaseItem(String itemId) {
    final existingItemIndex =
        _cartItems.indexWhere((cartItem) => cartItem.id == itemId);

    if (existingItemIndex >= 0) {
      // Check if quantity is greater than 1, then decrease it
      if (_cartItems[existingItemIndex].quantity > 1) {
        _cartItems[existingItemIndex].quantity -= 1;
      } else {
        // If quantity is 1, remove the item from the cart
        _cartItems.removeAt(existingItemIndex);
      }
      notifyListeners(); // Notify listeners to update the UI
    }
  }

  // remove items form the cart
  void removeFromCart(String id) {
    _cartItems.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  // sum of items price
  num get sumPrice {
    num sum = 0;
    for (var item in _cartItems) {
      sum += item.price * item.quantity;
    }
    return sum;
  }
}

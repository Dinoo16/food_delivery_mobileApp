// ignore_for_file: public_member_api_docs, sort_constructors_first
class MealItems {
  final String id;
  final String name;
  final num price;
  final String image;
  final String category;
  int quantity;
  MealItems(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.category,
      this.quantity = 1});
}

class MealCategory {
  final num id;
  final String name;
  final String image;
  MealCategory({
    required this.id,
    required this.name,
    required this.image,
  });
}

final List<MealItems> items = [
  MealItems(
      id: 'm1',
      name: 'Beef Burger',
      price: 20,
      image: 'assets/images/burger.png',
      category: 'Burger'),
  MealItems(
      id: 'm2',
      name: 'Cheeese Pizaa',
      price: 32,
      image: 'assets/images/pizza.png',
      category: 'Pizza'),
  MealItems(
      id: 'm3',
      name: 'Noodles',
      price: 18,
      image: 'assets/images/noodles.png',
      category: 'Dessert'),
  MealItems(
      id: 'm4',
      name: 'Fries',
      price: 18,
      image: 'assets/images/fries.png',
      category: 'Dessert'),
];

final List<MealCategory> categories = [
  MealCategory(id: 1, name: 'All', image: 'assets/images/food.png'),
  MealCategory(id: 2, name: 'Burger', image: 'assets/images/burger.png'),
  MealCategory(id: 3, name: 'Pizza', image: 'assets/images/pizza.png'),
  MealCategory(
      id: 4, name: 'Dessert', image: 'assets/images/dessert_category.png'),
];

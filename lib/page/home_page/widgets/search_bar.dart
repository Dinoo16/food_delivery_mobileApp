import 'package:flutter/material.dart';

class SearchBarHome extends StatelessWidget {
  const SearchBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: const SearchBar(
        leading: Icon(Icons.search),
        hintText: 'Search',
      ),
    );
  }
}

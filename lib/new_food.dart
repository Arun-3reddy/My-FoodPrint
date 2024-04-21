import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooditems.dart';

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Categories'),
        backgroundColor: const Color.fromARGB(255, 154, 59, 59),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        color: const Color.fromARGB(255, 242, 236, 190),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              buildCategoryCard(context, 'Liquids', 'Navigate to Liquids'),
              buildCategoryCard(context, 'Snacks', 'Navigate to Snacks'),
              buildCategoryCard(context, 'Meals', 'Navigate to Meals'),
              // Add more categories here
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryCard(BuildContext context, String title, String message) {
    return InkWell(
      onTap: () {
        // Navigate to new page with food items for the category
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FoodItems(title)),
        );
      },
      child: Card(
        color: const Color.fromARGB(255, 192, 130, 97),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}

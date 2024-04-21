import 'package:flutter/material.dart';
import 'package:flutter_application_1/ingredients.dart';

class FoodItems extends StatelessWidget {
  final String category;
  final Map<String, List<String>> foodItems = {
    'Liquids': ['Water', 'Coffee', 'Juice'],
    'Snacks': ['Chips', 'Fruits', 'Cookies'],
    'Meals': ['Pizza', 'Pasta', 'Salad'],
    // Add more categories and items here
  };

  FoodItems(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = foodItems[category] ?? []; // Get items for category

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Items'),
        backgroundColor: const Color.fromARGB(255, 154, 59, 59), // App bar color (red)
      ),
      body: Container(
        color: const Color.fromARGB(255, 242, 236, 190), // Body color (light yellow)
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final String itemName = items[index];
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IngredientsPage(itemName),
                ),
              ),
              child: Padding(
                // Card color implicitly applied through Scaffold's background
                padding: const EdgeInsets.all(16.0),
                child: Text(itemName, style: const TextStyle(fontSize: 18.0)),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IngredientsPage extends StatelessWidget {
  final String foodItem;
  final Map<String, List<String>> ingredients = {
    'Water': [], // Add ingredients for each food item
    'Coffee': ['Coffee beans\t 80%', 'Water\t10%', 'Sugar (optional)'],
    'Juice': ['Fruits or vegetables'],
    'Chips': ['Potatoes\t\t80%', 'Oil', 'Salt', 'Spices (optional)'],
    'Fruits': [], // Add ingredients for each food item
    'Cookies': ['Flour', 'Sugar', 'Butter', 'Eggs', 'Chocolate chips (optional)'],
    'Pizza': ['Dough', 'Tomato sauce', 'Cheese', 'Toppings (optional)'],
    'Pasta': ['Pasta noodles', 'Sauce', 'Ingredients (vegetables, meat, etc.)'],
    'Salad': ['Greens', 'Vegetables', 'Dressing'],
    // Add more ingredients for each food item
  };

  IngredientsPage(this.foodItem, {super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ingredientList = ingredients[foodItem] ?? [];
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingredients for $foodItem'),
        backgroundColor: const Color.fromARGB(255, 154, 59, 59),
      ),
      body: Container(
        color: const Color.fromARGB(255, 242, 236, 190),
        child: Column(
          children: [
            // Existing ListView.builder for ingredients
            ListView.builder(
              shrinkWrap: true, // Wrap the content to avoid overflow
              itemCount: ingredientList.length,
              itemBuilder: (context, index) {
                final String ingredient = ingredientList[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(ingredient),
                );
              },
            ),

            // Row for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Detailed view button
                ElevatedButton(
                  onPressed: () {
                    // Handle detailed view action (add your logic here)
                    print('Detailed view button pressed!');
                  },
                  child: Text('Detailed view'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 242, 236, 190), 
                    backgroundColor: const Color.fromARGB(255, 154, 59, 59),
                  ),
                ),

                // Select item button
                ElevatedButton(
                  onPressed: () {
                    // Handle select item action (add your logic here)
                    print('Select this item button pressed!');
                  },
                  child: Text('Select this item'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 242, 236, 190), 
                    backgroundColor: const Color.fromARGB(255, 154, 59, 59),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooditems.dart';
import 'package:flutter_application_1/fooditems2.dart'; // Assuming fooditems.dart defines FoodItem and related classes

class FoodCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Categories',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(154, 59, 59, 1),
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(242, 236, 190, 1),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black), // Black text for cards
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<FoodCategory> categories = [
    FoodCategory("Liquids", "assets/images/liquids.jpg"),
    FoodCategory("Snacks", "assets/images/snacks.jpg"),
    FoodCategory("Fruits", "assets/images/fruits.jpg"),
    // Add more categories here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Categories'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Navigate back
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromRGBO(226, 199, 153, 1),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: const Color.fromRGBO(192, 130, 97, 1),
              onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => FoodItems(category: categories[index]),
              //     ),
              //   );
               },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      categories[index].imagePath,
                      width: 50.0,
                      height: 75.0,
                    ),
                    const SizedBox(width: 16.0),
                    Text(categories[index].name),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FoodCategory {
  final String name;
  final String imagePath;

  FoodCategory(this.name, this.imagePath);
}

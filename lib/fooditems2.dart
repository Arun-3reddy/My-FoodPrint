import 'package:flutter/material.dart';
import 'package:flutter_application_1/Food_cat.dart';

class FoodItems {
  final String name;
  final String description; // Optional, can be added for more details

  FoodItems(this.name,this.description, {required FoodCategory category});
}

class FoodItemList extends StatelessWidget {
  //final FoodCategory category;
  //FoodItemList({super.key, required FoodCategory category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
      ),
    );
  }
}
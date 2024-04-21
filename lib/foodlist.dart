import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Categories'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 59, 59,1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Container(
          color: const Color.fromRGBO(242, 236, 190, 1),
          child: Center(
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  color: const Color.fromRGBO(226, 199, 153,1),
                  child: InkWell(
                    splashColor: const Color.fromRGBO(192, 130, 97,1),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 700,
                      height: 100,
                      child: Row(
                        children: [
                          Image(image:AssetImage('assets/images/quote.jpg')),
                          SizedBox(width: 16.0),
                          Text("Fruits"),
                        ],
                      ),
                    ),
                  )
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  color:const Color.fromRGBO(226, 199, 153,1),
                  child: InkWell(
                    splashColor: const Color.fromRGBO(192, 130, 97,1),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 700,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  )
                ),
              ],
            ),
          ),
      ),
    );
  }
}
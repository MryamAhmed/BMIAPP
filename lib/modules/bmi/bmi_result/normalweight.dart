import 'package:flutter/material.dart';

class NormalWeight extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('Emphasizes fruits, vegetables, whole grains, and fat-free or low-fat milk and milk products Includes a variety of protein foods such as seafood, \n \nlean meats and poultry, eggs, legumes (beans and peas), soy products, nuts, and seeds. Is low in added sugars, sodium, saturated fats, trans fats, and cholesterol',
                  style: TextStyle(
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

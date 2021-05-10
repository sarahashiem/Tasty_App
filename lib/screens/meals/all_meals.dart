import 'package:flutter/material.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultcolor.dart';
import 'package:your_profile/shared/components/components.dart';
import 'package:your_profile/shared/components/drawer.dart';

class AllMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('All Meals'),
          backgroundColor: defaultColor,
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
          ]),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          CardMeals(
            name: 'Name: ONION RINGS',
            price: 'Price: 20 L.E',
            description:
                'Description: Hand made fresh onion rings sweet chill mayo sauce',
            category: 'Category: Appetizers',
            photo:
                'https://www.godairyfree.org/wp-content/uploads/2011/01/Baked-Vegan-Onion-Rings.jpg',
          ),
          CardMeals(
            name: 'Name: ONION RINGS',
            price: 'Price: 20 L.E',
            description:
                'Description: Hand made fresh onion rings sweet chill mayo sauce',
            category: 'Category: Appetizers',
            photo:
                'https://www.godairyfree.org/wp-content/uploads/2011/01/Baked-Vegan-Onion-Rings.jpg',
          ),
        ],
      ),
    );
  }
}

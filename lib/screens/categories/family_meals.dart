import 'package:flutter/material.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultcolor.dart';
import 'package:your_profile/shared/components/components.dart';
import 'package:your_profile/shared/components/drawer.dart';

class FamilyMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Family Meals'),
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
      body: Column(children: [
        SizedBox(
          height: 5,
        ),
        TileCard(
          name: '9 PCS Chicken',
          price: '190 L.E',
          description:
          '  Hand made fresh onions rings sweet chili mayo sauce  ',
          photo:
          'https://www.godairyfree.org/wp-content/uploads/2011/01/Baked-Vegan-Onion-Rings.jpg',
        ),
      ]),
    );
  }
}

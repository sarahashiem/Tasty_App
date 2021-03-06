import 'package:flutter/material.dart';
import 'package:your_profile/admin/admin/notifications.dart';
import 'package:your_profile/admin/admin/add_your_meal.dart';
import 'package:your_profile/screens/categories/appetizer_screen.dart';
import 'package:your_profile/screens/categories/beef_sandwich.dart';
import 'package:your_profile/screens/categories/chicken_sandwich.dart';
import 'package:your_profile/screens/categories/desserts.dart';
import 'package:your_profile/screens/categories/family_meals.dart';
import 'package:your_profile/screens/categories/kids_meals.dart';
import 'package:your_profile/screens/orders/orders.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditMeals()));
            },
            title: Text('Add new meal'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PushNotification()));
            },
            title: Text('Push Notifications'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderMeals()));
            },
            title: Text('Orders'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Appetizer()));
            },
            title: Text('Appetizers'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BeefSandwich()));
            },
            title: Text('Beef Sandwich'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChickenSandwich()));
            },
            title: Text('Chicken Sandwich'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Desserts()));
            },
            title: Text('Desserts'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyMeals()));
            },
            title: Text('Family Meals'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KidsMeals()));
            },
            title: Text('Kids Meals'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('LOGOUT'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}

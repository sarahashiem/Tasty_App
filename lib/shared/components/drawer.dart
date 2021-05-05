import 'package:flutter/material.dart';
import 'package:your_profile/notification/notifications.dart';
import 'package:your_profile/screens/meals/add_your_meal.dart';
import 'package:your_profile/screens/meals/appetizers.dart';
import 'package:your_profile/screens/orders/orders.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>EditMeals()));},
            title: Text('Add new meal'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>PushNotification()));},
            title: Text('Push Notification'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderMeals()));},
            title: Text('Orders'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>AppetizersMeal()));},
            title: Text('Appetizers'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {},
            title: Text('Beef Sandwich'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {},
            title: Text('Desserts'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {},
            title: Text('Family Meals'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {},
            title: Text('Kids Meals'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),
          ListTile(
            onTap: () {},
            title: Text('LOGOUT'),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
          ),


        ],
      ),
    );
  }
}
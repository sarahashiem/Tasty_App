import 'package:flutter/material.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultcolor.dart';
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
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));},
            ),
          ]),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 4,
                  blurRadius: 7,
                  offset: Offset(2, 1),
                )
              ],
            ),
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ONION RINGS'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('Description: Hand made fresh onion rings sweet chill mayo sauce '),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('Price: 20'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('Category: Appetizers'),
                ]),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultColor.dart';
import 'package:your_profile/shared/components/components.dart';
import 'package:your_profile/shared/components/drawer.dart';

class AppetizersMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Appetizers'),
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
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 70),
            DefaultTextBox(
                text: 'Meal Description',
                hint: 'Enter New Description',
                title: 'Description required'),
            SizedBox(height: 10),
            DefaultTextBox(
                text: 'Meal Price',
                hint: 'enter New Price',
                title: 'Price required'),
            SizedBox(height: 10),
            DefaultTextBox(
                text: 'Meal Title',
                hint: 'enter new Title',
                title: 'Title required'),
            SizedBox(height: 150),
            Center(
              child: SizedBox(
                  width: 300,
                  child: DefaultButton(
                      textButton: 'Edit Meal', color: Colors.blueAccent)),
            ),
          ],
        ),
      ),
    );
  }
}

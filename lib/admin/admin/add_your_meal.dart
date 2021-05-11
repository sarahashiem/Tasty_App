import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultColor.dart';
import 'package:your_profile/shared/components/components.dart';
import 'package:your_profile/shared/components/drawer.dart';

class EditMeals extends StatefulWidget {
  @override
  _EditMealsState createState() => _EditMealsState();
}

class _EditMealsState extends State<EditMeals> {
  String valueChoose;
  List listItem = ['item 1', 'item 2', 'item 3', 'item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Add your meal'),
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
            SizedBox(height: 20),
            DefaultTextBox(
                text: 'title', hint: 'enter title', title: 'title required'),
            SizedBox(height: 10),
            DefaultTextBox(
                text: 'description',
                hint: 'enter description',
                title: 'description required'),
            SizedBox(height: 10),
            DefaultTextBox(
                text: 'Price', hint: 'enter Price', title: 'Price required'),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Choose Category',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: DropdownButton(
                  hint: Text('Appetizers'),
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue;
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
                width: 200,
                child: DefaultButton(
                    textButton: '+Add photo', color: Colors.blueAccent)),
            SizedBox(
                width: 300,
                child: DefaultButton(
                    textButton: '+Add Meal', color: Colors.blueAccent)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultColor.dart';
import 'package:your_profile/shared/components/components.dart';

class OrderMeals extends StatefulWidget {
  @override
  _OrderMealsState createState() => _OrderMealsState();
}

class _OrderMealsState extends State<OrderMeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Orders'),
            backgroundColor: defaultColor,
            actions: [
              IconButton(icon: Icon(Icons.home), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));}),
              IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
            ]),
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
                  Text('Order Name: CHOCOLATE MINI CAKE'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('Date/Time:2021-20-20 21:17:38.000'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('Total Price: 35'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User name: zoz'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User Area: shobra'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User street name: loloo'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User Building Number: 123'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User floor Number: 23'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User User Apartment Number: 3'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('User Note: Shokran'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DefaultButton(
                        textButton: 'accept',
                        color: Colors.blueAccent,
                      ),
                      DefaultButton(textButton: 'finish', color: Colors.green),
                      DefaultButton(textButton: 'Delete', color: Colors.red)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpdateProfile(),
    );
  }
}

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController nameFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Update Your Profile'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
            ),
          ]),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                      controller: nameFieldController,
                      decoration: InputDecoration(hintText: "New name")),
                  Text('Enter your name without space',
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () => {},
                padding: EdgeInsets.all(8.0),
                color: Colors.blueAccent,
                child: Text(
                  '+ Edit your photo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text('Please check your data before saving'),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () => {},
                  padding: EdgeInsets.all(8.0),
                  color: Colors.green,
                  child: Text(
                    'save and finish',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

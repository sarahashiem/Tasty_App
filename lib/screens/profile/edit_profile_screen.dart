import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_profile/shared/colors/defaultColor.dart';
import 'package:your_profile/shared/components/components.dart';

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Update Your Profile'),
          backgroundColor: defaultColor,
          actions: [
            Column(
              children: <Widget>[
                Text('home'),
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
              ],
            ),
          ]),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(12, 20, 12, 20),
              child: DefaultTextBox(
                  text: 'title', hint: 'enter title', title: 'title required'),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: Offset(0, 1),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            Center(
              child: Container(
                  child: DefaultButton(
                      textButton: '+edit your profile',
                      color: Colors.blueAccent)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Please check your data before saving'),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.5,
                child: DefaultButton(
                    textButton: 'Save and finish', color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:your_profile/main.dart';
import 'package:your_profile/shared/colors/defaultColor.dart';
import 'package:your_profile/shared/components/components.dart';

class PushNotification extends StatefulWidget {
  @override
  _PushNotificationState createState() => _PushNotificationState();
}

class _PushNotificationState extends State<PushNotification> {
  Widget _buildNumberTextField() {
    return TextField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Push Notifications'),
          backgroundColor: defaultColor,
          actions: [
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));},
                  ),
                  Text('home'),
                ],
              ),
            ),
          ]),
      body: SizedBox(
        child: Center(
          child: ListView(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  children: [
                    SizedBox(height: 100),
                    ListTile(
                    title: Text('Enter your message'),
            ),
                    _buildNumberTextField(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Center(
                      child: SizedBox(
                          width: 200,
                          child: DefaultButton(
                      textButton: '+Add photo', color: Colors.blueAccent)),
            ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Center(
                      child: SizedBox(
                  width: 300,
                          child: DefaultButton(
                      textButton: 'Send notification',
                      color: Colors.blueAccent)),
            ),
          ]),
        ),
      ),
    );
  }
}

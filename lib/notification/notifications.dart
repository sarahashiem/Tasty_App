import 'package:flutter/material.dart';
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
          title: Text('Push Notification'),
          backgroundColor: defaultColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          actions: [
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                  Text('home'),
                ],
              ),
            ),
          ]),
      body: SizedBox(
        child: Center(
          child:
              ListView(padding: EdgeInsets.fromLTRB(30, 20, 30, 20), children: [
            ListTile(
              title: Text('Enter your message'),
            ),
            _buildNumberTextField(),
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

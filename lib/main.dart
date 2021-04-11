import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'edit_profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/edit': (context) => UpdateProfile(),
      },
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Your Profile"),
        ),
        body: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 1),
                                )
                              ],
                              border: Border.all(
                                  color: Colors.blueAccent, width: 2.0),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Zoz",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Ziad@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.black45),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.edit, color: Colors.blueAccent),
                            SizedBox(width: 6),
                            FlatButton(
                                child: Text(
                                  'Update Your Profile',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black45),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/edit');
                                }),
                          ]),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Container(
                          padding: EdgeInsets.only(right: 15, left: 15),
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 15.0,
                                mainAxisSpacing: 15.0,
                              ),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 30),
                                    margin: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(25)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.7),
                                          spreadRadius: 4,
                                          blurRadius: 7,
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.blueAccent,
                                        child: Text('$index',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20))));
                              }),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () => {},
                            padding: EdgeInsets.all(8.0),
                            color: Colors.red,
                            child: Text(
                              'LOGOUT',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 20, left: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(33))),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Icon(Icons.home,
                                  color: Colors.grey.withOpacity(0.6)),
                              Text('Home'),
                            ]),
                            Column(children: <Widget>[
                              Icon(Icons.shopping_cart,
                                  color: Colors.grey.withOpacity(0.6)),
                              Text('Cart'),
                            ]),
                            Column(children: <Widget>[
                              Icon(Icons.favorite,
                                  color: Colors.grey.withOpacity(0.6)),
                              Text('Favorites'),
                            ]),
                            Column(children: <Widget>[
                              Icon(Icons.person, color: Color(0xff4348e6)),
                              Text('Profile'),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:your_profile/screens/meals/all_meals.dart';
import './screens/orders/orders.dart';
import 'screens/profile/edit_profile_screen.dart';
import 'shared/colors/defaultColor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
      ),
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
  int _currentIndex = 0;

  void boxClickedAt(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColor,
        title: Text("Your Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 530,
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
                              border:
                                  Border.all(color: defaultColor, width: 2.0),
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
                            Icon(Icons.edit, color: defaultColor),
                            SizedBox(width: 6),
                            FlatButton(
                                child: Text(
                                  'Update Your Profile',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black45),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UpdateProfile()));
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
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                              ),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  // padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                                  margin: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 4,
                                        blurRadius: 7,
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                  ),
                                  child: FlatButton(
                                      onPressed: () {
                                        switch (index) {
                                          case 0:
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        OrderMeals()));
                                            break;
                                          case 1:
                                           Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AllMeals()));
                                            break;
                                          case 2:
                                          /*  Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditMeals()));*/
                                            break;
                                          case 3:
                                        /*    Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Appetizer()));*/
                                            break;
                                        }
                                        // boxClickedAt(index);
                                      },
                                      child: Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                                radius: 15,
                                                backgroundColor: defaultColor,
                                                child: Text('$index',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20))),
                                            Text([index].map((item) {
                                              switch (item) {
                                                case 0:
                                                  return "My Orders";
                                                case 1:
                                                  return "Website";
                                                case 2:
                                                  return "My Cart";
                                                case 3:
                                                  return "My favorites";
                                              }
                                              return "";
                                            }).first)
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
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
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   padding: EdgeInsets.only(right: 10, left: 10),
                      //   margin: EdgeInsets.all(6),
                      //   decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.grey.withOpacity(0.4),
                      //           spreadRadius: 5,
                      //           blurRadius: 7,
                      //           offset: Offset(0, 1),
                      //         )
                      //       ],
                      //       borderRadius: BorderRadius.vertical(
                      //           top: Radius.circular(33))),
                      //   /* child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: <Widget>[
                      //         Column(children: <Widget>[
                      //           Icon(Icons.home,
                      //               color: Colors.grey.withOpacity(0.6)),
                      //           Text('Home'),
                      //         ]),
                      //         Column(children: <Widget>[
                      //           Icon(Icons.shopping_cart,
                      //               color: Colors.grey.withOpacity(0.6)),
                      //           Text('Cart'),
                      //         ]),
                      //         Column(children: <Widget>[
                      //           Icon(Icons.favorite,
                      //               color: Colors.grey.withOpacity(0.6)),
                      //           Text('Favorites'),
                      //         ]),
                      //         Column(children: <Widget>[
                      //           Icon(Icons.person, color: Color(0xff4348e6)),
                      //           Text('Profile'),
                      //         ]),
                      //       ],
                      //     ),*/
                      // ),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('profile'),
          ),
        ],
      ),
    );
  }
}

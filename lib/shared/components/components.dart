import 'package:flutter/material.dart';
import 'package:your_profile/screens/meals/appetizers.dart';

class DefaultTextBox extends StatelessWidget {
  final String text;
  final String hint;
  final String title;

  DefaultTextBox(
      {@required this.text, @required this.hint, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                labelText: text,
                hintText: hint,
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white)),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return title;
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String textButton;
  final Color color;

  DefaultButton({
    @required this.textButton,
    @required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: color,
        onPressed: (){},
        child: Text(
          textButton,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class TileCard extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String photo;

  TileCard({
    @required this.name,
    @required this.price,
    @required this.description,
    @required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: GestureDetector(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      (photo),
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 80),
                                      child: Text(
                                        price,
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    height: 1.4,
                                    color: Colors.blueGrey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                (photo),
                                fit: BoxFit.cover,
                                width: 300,
                                height: 300,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              DefaultButton(
                                  textButton: 'DELETE MEAL', color: Colors.red),
                              RaisedButton(onPressed: (){Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => AppetizersMeal()));},
                                color: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'EDIT MEAL',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardMeals extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String category;
  final String photo;

  CardMeals({
    @required this.name,
    @required this.price,
    @required this.description,
    @required this.category,
    @required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(2, 1),
            )
          ],
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  category,
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  (photo),
                  fit: BoxFit.cover,
                  height: 300,
                ),
              ),
            ),
            SizedBox(
                width: 350,
                child: DefaultButton(
                    textButton: 'DELETE MEAL', color: Colors.red)),
            SizedBox(
                width: 295,
              child:
                RaisedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppetizersMeal()));},
                color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'EDIT MEAL',
                    style: TextStyle(color: Colors.white),
                  ),

                ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
        onPressed: () {},
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

  TileCard({
    @required this.name,
    @required this.price,
    @required this.description,
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
                                      ('https://www.godairyfree.org/wp-content/uploads/2011/01/Baked-Vegan-Onion-Rings.jpg'),
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
                                  children: [
                                    Text(
                                      name,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: Text(
                                        price,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900,

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
                                style: TextStyle(fontSize: 18, height: 1.4,
                                    color: Colors.blueGrey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              ('https://www.godairyfree.org/wp-content/uploads/2011/01/Baked-Vegan-Onion-Rings.jpg'),
                              fit: BoxFit.cover,
                              width: 370,
                              height: 250,
                            ),
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              DefaultButton(
                                  textButton: 'DELETE MEAL', color: Colors.red),
                              DefaultButton(
                                  textButton: ' EDIT MEAL ', color: Colors.green)
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

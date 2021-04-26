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

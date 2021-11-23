import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FemAppBar extends AppBar {
  final String _text;

  FemAppBar(
    this._text,
  );

  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomLeft,
              height: s.height / 19,
              child: Text(
                "IDEA UP",
                style:
                    TextStyle(color: Colors.white, fontSize: s.width / 14.92),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginPage()));
                },

                textColor: Colors.white,
                padding: const EdgeInsets.all(8.0),
                //splashColor: Colors.red,
                child: Text(
                  _text,
                  style: TextStyle(fontSize: s.width / 29.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

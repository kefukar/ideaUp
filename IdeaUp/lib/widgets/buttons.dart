import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  String _buttonText;
  double _width;
  double _height;
  double _fontSize;
  void Function() _onTap;

  Buttons(
    this._buttonText,
    this._fontSize,
    this._height,
    this._width,
    this._onTap,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: _width,
      height: _height,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 30,
            offset: Offset(0, 0.5), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
          bottom: Radius.circular(30),
        ),
        gradient: new LinearGradient(
            colors: [
              const Color(0xF05A3AAB),
              const Color(0xF04A1AAB),
            ],
            begin: const FractionalOffset(
              0.4,
              0.9,
            ),
            end: const FractionalOffset(0.7, 0.1),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(24.0),
          //side: BorderSide(color: Colors.red),
        ),
        child: Text(
          _buttonText,
          style: TextStyle(fontSize: _fontSize, color: Colors.white),
        ),
        onPressed: _onTap,
      ),
    );
  }
}

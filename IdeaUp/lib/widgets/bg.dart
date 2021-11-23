import 'package:flutter/material.dart';

BoxDecoration boxDecorationBG() {
  return new BoxDecoration(
    gradient: new LinearGradient(
        colors: [
          const Color(0xF05A3AAB),
          const Color(0xF07A1AAB),
          const Color(0xF06A1AAB),
          const Color(0xF04A1AAB),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        tileMode: TileMode.clamp),
  );
}

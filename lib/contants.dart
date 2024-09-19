import 'package:flutter/material.dart';

LinearGradient greyGradient = const LinearGradient(
  begin: Alignment(0, -0.5),
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 185, 185, 185),
    Color(0xFFFFFFFF),
  ],
);

LinearGradient greyGradientLogin =
    const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
  Color(0xFFFFFFFF),
  Color.fromARGB(255, 185, 185, 185),
]);

Color darkTextColor = const Color.fromARGB(255, 3, 15, 50);
Color lightTextColor = const Color.fromARGB(255, 209, 211, 218);

import 'package:flutter/material.dart';

class GlobalStyles {
  // Container style
  static BoxDecoration containerDecoration({
    Color color = const Color(0xff462B96),
    double borderRadius = 20.0,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
    );
  }

  // Container style
  static BoxDecoration mainContainerDecoration({
    LinearGradient gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomLeft,
      colors: <Color>[
        Color(0xff462B96),
        Color(0xff644AB5),
      ],
    ),
  }) {
    return BoxDecoration(
      gradient: gradient,
    );
  }

  // Text style with default values and optional parameters
  static TextStyle textStyle({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Icon style
  static IconThemeData IconTheme({
    Color color = Colors.white,
    double size = 20,
  }) {
    return IconThemeData(
      color: color,
      size: size,
    );
  }

  // IconButton with default values and optional parameters
  static IconButton customIconButton({
    required IconData icon,
    required VoidCallback onPressed,
    Color color = Colors.white,
    double iconSize = 20,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: color,
      iconSize: iconSize,
    );
  }
}

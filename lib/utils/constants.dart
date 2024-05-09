import 'package:flutter/material.dart';

class AppConstants {
  static Color primaryColor = Colors.indigo.shade400;
  static Color textColor = Colors.indigo.shade400;
  static const Color appBarColor = Color(0xFF333333);

  static const TextStyle titleTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 35,
  );
  static const TextStyle appBarTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyTextStyle = TextStyle(
    color: textColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}

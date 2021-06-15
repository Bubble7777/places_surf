import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'colors.dart';

class TextThemes {
  static TextStyle textType = const TextStyle(
      color: white,
      fontFamily: 'Roboto-Regular',
      fontStyle: FontStyle.normal,
      fontSize: 14,
      fontWeight: FontWeight.bold);

  static TextStyle textName = const TextStyle(
    fontStyle: FontStyle.normal,
    fontFamily: 'Roboto-Regular',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: colorAccent,
  );

  static TextStyle textDetails = const TextStyle(
    fontStyle: FontStyle.normal,
    fontFamily: 'Roboto-Regular',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: colorDetails,
  );
  static TextStyle textDetailsName = TextStyle(
    color: colorAccent,
    fontFamily: 'Roboto-Regular',
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
  );
  static TextStyle appBarListScreen = TextStyle(
      height: 1.12,
      color: black,
      fontSize: 32,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto-Regular');
}

import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    elevation: 1,
    centerTitle: true,
    color: Colors.blue,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: 'Corben',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Colors.black,
    ),
  ),
);

//Padding
const horizontalPadding = 16.0;
const verticalPadding = 16.0;
const bottomScreenPadding = 32.0;
const allPadding = 8.0;

//BorderRadius
const borderRadius = 8.0;
const borderRadius16 = 16.0;

//Color
final bottomGrey = Colors.grey.shade200;
final shadowGrey = Colors.grey.shade400;
final gradientLightBlue = Colors.lightBlue.shade200;
final gradientDarkBlue = Colors.blue.shade900;
final white = Colors.white;

//Size

const photoSize = 150.0;
const smallPhotoSize = 80.0;

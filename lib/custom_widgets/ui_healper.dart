import 'package:flutter/material.dart';

class MyColor {

  //light theme colors
  static const Color bgWColor = Color(0xffffffff);
  static const Color secondaryWColor = Color(0xff27ca7d);
  static const Color textWColor = Color(0xff000000);
  static const Color lightTextWColor = Color(0xffb1b1b5);
  static const Color textfeildWColor = Color(0xffF4F4F4);

  //dark theme colors
  static const Color bgBColor = Color(0xff000000);
  static const Color secondaryBColor = Color(0xff27ca7d);
  static const Color textBColor = Color(0xffffffff);
  static const Color lightTextBColor = Color(0xffcccccc);
  static const Color textfeildBColor = Color(0xff252525);

}

MaterialColor createMaterialColor(Color color) {

  List strengths = <double>[.05];

  Map<int, Color> swatch = {};

  final int r = color.red, g = color.green, b = color.blue;



  for (int i = 1; i < 10; i++) {

    strengths.add(0.1 * i);

  }

  for (var strength in strengths) {

    final double ds = 0.5 - strength;

    swatch[(strength * 1000).round()] = Color.fromRGBO(

      r + ((ds < 0 ? r : (255 - r)) * ds).round(),

      g + ((ds < 0 ? g : (255 - g)) * ds).round(),

      b + ((ds < 0 ? b : (255 - b)) * ds).round(),

      1,

    );

  }

  return MaterialColor(color.value, swatch);

}


TextStyle mTextStyle43({
  fontWeight = FontWeight.normal,
  mColor = Colors.black,
  fontStyle = FontStyle.normal
}){
  return TextStyle(
      fontSize: 43,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: mColor,
  );
}

TextStyle mTextStyle52({
  fontWeight = FontWeight.normal,
  mColor = Colors.black,
  fontStyle = FontStyle.normal
}){
  return TextStyle(
      fontSize: 52,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: mColor,
  );
}

TextStyle mTextStyle26({
  fontWeight = FontWeight.normal,
  mColor = Colors.black,
  fontStyle = FontStyle.normal
}){
  return TextStyle(
      fontSize: 26,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: mColor,
  );
}

TextStyle mTextStyle19({
  fontWeight = FontWeight.normal,
  mColor = Colors.black,
  fontStyle = FontStyle.normal
}){
  return TextStyle(
      fontSize: 19,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: mColor,
  );
}


TextStyle mTextStyle16({
  fontWeight = FontWeight.normal,
  mColor = Colors.black,
  fontStyle = FontStyle.normal
}){
  return TextStyle(
      fontSize: 16,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: mColor,
  );
}

TextStyle mTextStyle12({
  fontWeight = FontWeight.normal,
  mColor = Colors.black,
  fontStyle = FontStyle.normal
}){
  return TextStyle(
      fontSize: 12,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: mColor,
  );
}



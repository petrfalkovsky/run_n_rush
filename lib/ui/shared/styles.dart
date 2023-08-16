import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static const fontRegular = 'Proxima-Nova';

  static const text10 = TextStyle(
    fontSize: 10,
    fontFamily: fontRegular,
  );

  static const text12 = TextStyle(
    fontSize: 12,
    fontFamily: fontRegular,
  );

  static const text14 = TextStyle(
    fontSize: 14,
    fontFamily: fontRegular,
  );

  static const text16 = TextStyle(
    fontSize: 16,
    fontFamily: fontRegular,
  );

  static const text17 = TextStyle(
    fontSize: 17,
    fontFamily: fontRegular,
  );

  static const text18 = TextStyle(
    fontSize: 18,
    fontFamily: fontRegular,
  );

  static const text20 = TextStyle(
    fontSize: 20,
    fontFamily: fontRegular,
  );

  static const text22 = TextStyle(
    fontSize: 22,
    fontFamily: fontRegular,
  );

  static const text24 = TextStyle(
    fontSize: 24,
    fontFamily: fontRegular,
  );
  static const text30 = TextStyle(
    fontSize: 30,
    fontFamily: fontRegular,
  );
}

extension TextStyleX on TextStyle {
  TextStyle andSize(double size) => copyWith(fontSize: size);
  TextStyle andWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle andColor(Color color) => copyWith(color: color);
  TextStyle andHeight(double height) => copyWith(height: height);
}

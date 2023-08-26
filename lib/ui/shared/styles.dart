import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static const fontRegular = 'Proxima-Nova';

  static const largeTitle = TextStyle(
    fontSize: 72,
    fontFamily: fontRegular,
  );

  static const title = TextStyle(
    fontSize: 32,
    fontFamily: fontRegular,
  );

  static const title2 = TextStyle(
    fontSize: 28,
    fontFamily: fontRegular,
    fontWeight: FontWeight.w600,
  );

  static const headline = TextStyle(
    fontSize: 20,
    fontFamily: fontRegular,
    fontWeight: FontWeight.w600,
  );

  static const body = TextStyle(
    fontSize: 16,
    fontFamily: fontRegular,
    fontWeight: FontWeight.w600,
  );

  static const plainText = TextStyle(
    fontSize: 16,
    fontFamily: fontRegular,
  );

  static const caption = TextStyle(
    fontSize: 12,
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
  static const input = TextStyle(
    fontSize: 16,
    fontFamily: fontRegular,
  );
}

extension TextStyleX on TextStyle {
  TextStyle andSize(double size) => copyWith(fontSize: size);
  TextStyle andWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle andColor(Color color) => copyWith(color: color);
  TextStyle andHeight(double height) => copyWith(height: height);
}

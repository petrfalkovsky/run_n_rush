import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static const avenirBlackOblique = 'Avenir BlackOblique';
  static const avenirBook = 'Avenir Book';

  static const largeTitle = TextStyle(
    fontSize: 72,
    fontFamily: avenirBlackOblique,
  );

  static const title = TextStyle(
    fontSize: 32,
    fontFamily: avenirBlackOblique,
  );

  static const title2 = TextStyle(
    fontSize: 28,
    fontFamily: avenirBlackOblique,
    fontWeight: FontWeight.w600,
  );

  static const headline = TextStyle(
    fontSize: 20,
    fontFamily: avenirBlackOblique,
    fontWeight: FontWeight.w600,
  );

  static const body = TextStyle(
    fontSize: 16,
    fontFamily: avenirBlackOblique,
    fontWeight: FontWeight.w600,
  );

  static const plainText = TextStyle(
    fontSize: 16,
    fontFamily: avenirBlackOblique,
  );

  static const plainTextMedium = TextStyle(
    fontSize: 14,
    fontFamily: avenirBlackOblique,
  );

  static const plainTextSmall = TextStyle(
    fontSize: 12,
    fontFamily: avenirBlackOblique,
  );

  static const caption = TextStyle(
    fontSize: 12,
    fontFamily: avenirBook,
  );

  static const text22 = TextStyle(
    fontSize: 22,
    fontFamily: avenirBlackOblique,
  );

  static const text24 = TextStyle(
    fontSize: 24,
    fontFamily: avenirBlackOblique,
  );
  static const text30 = TextStyle(
    fontSize: 30,
    fontFamily: avenirBlackOblique,
  );
  static const input = TextStyle(
    fontSize: 16,
    fontFamily: avenirBlackOblique,
  );
  static const button = TextStyle(
    fontSize: 16,
    fontFamily: avenirBlackOblique,
  );
}

extension TextStyleX on TextStyle {
  TextStyle andSize(double size) => copyWith(fontSize: size);
  TextStyle andWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle andColor(Color color) => copyWith(color: color);
  TextStyle andHeight(double height) => copyWith(height: height);
}

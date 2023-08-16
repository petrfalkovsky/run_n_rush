import 'package:flutter/material.dart';

extension SizedBoxX on num {
  SizedBox get w => SizedBox(width: toDouble());
  SizedBox get h => SizedBox(height: toDouble());
}

extension StringLengthExtensions on String {
  String maxLen(int max) {
    assert(max > -1);
    return length < max ? this : substring(0, max);
  }

  String safePart(int partLength) {
    assert(partLength > -1);
    if (partLength == 0) {
      return this;
    }
    if (partLength * 2 >= length) {
      return this;
    }
    final start = substring(0, partLength);
    final end = substring(length - partLength, length);
    return '$start..$end';
  }
}

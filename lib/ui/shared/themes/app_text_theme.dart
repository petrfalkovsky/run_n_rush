import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';

abstract class AppTextTheme {
  const AppTextTheme();

  static AppTextTheme get fromPlatform => const BaseAppTextTheme();

  /// Font: SF UI Display
  String get fontFamily;

  /// H1 Bold Montserrat 44.5
  TextStyle get h0_0;

  /// H1 Bold Montserrat 28
  TextStyle get h1_0;

  /// H1 SemiBold SF UI Display 24
  TextStyle get h1_1;

  /// B1 Bold SF UI Display 17
  TextStyle get b1_0;

  /// B1 Medium SF UI Display 17
  TextStyle get b1;

  /// B1 SF UI Display 17
  TextStyle get b1_1;

  /// B1 Regular SF UI Display 17
  TextStyle get b1_2;

  /// B2 SemiBold SF UI Display 15
  TextStyle get b2_0;

  /// B2 Regular SF UI Display 15
  TextStyle get b2_1;

  /// B3 Medium SF UI Display 13
  TextStyle get b3_0;

  /// B3 Regular SF UI Display 13
  TextStyle get b3_1;

  /// Caption-Mob Regular SF UI Display 13
  TextStyle get captionMob;

  /// Manrope Regular SF UI Display 13
  TextStyle get manrope;
}

class BaseAppTextTheme extends AppTextTheme {
  const BaseAppTextTheme();

  @override
  String get fontFamily => 'SF UI Display';

  @override
  TextStyle get h0_0 => AppTextStyles.h0Bold;

  @override
  TextStyle get h1_0 => AppTextStyles.h1Bold;

  @override
  TextStyle get h1_1 => AppTextStyles.h1SemiBold;

  @override
  TextStyle get b1_0 => AppTextStyles.b1Bold;

  @override
  TextStyle get b1 => AppTextStyles.b1Bold;

  @override
  TextStyle get b1_1 => AppTextStyles.b1;

  @override
  TextStyle get b1_2 => AppTextStyles.b1Regular;

  @override
  TextStyle get b2_0 => AppTextStyles.b2SemiBold;

  @override
  TextStyle get b2_1 => AppTextStyles.b2Regular;

  @override
  TextStyle get b3_0 => AppTextStyles.b3Medium;

  @override
  TextStyle get b3_1 => AppTextStyles.b3Regular;

  @override
  TextStyle get captionMob => AppTextStyles.captionMob;

  @override
  TextStyle get manrope => AppTextStyles.manrope;
}

extension ThemeX on ThemeData {
  AppTextTheme get appTextTheme => AppTextTheme.fromPlatform;
}

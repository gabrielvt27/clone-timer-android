import 'package:flutter/material.dart';

const double kDefaultPadding = 36;

class AppColors {
  static Map<String, Color> _colorTheme = defaultColorThema;

  static setColorTheme(Map<String, Color> d) => _colorTheme = d;

  static Color get kBackGroundColor => _colorTheme['kBackGroundColor']!;

  static Color get kTextColor => _colorTheme['kTextColor']!;

  static Color get kTextTimerColor => _colorTheme['kTextTimerColor']!;

  static Color get kNumberButtonColor => _colorTheme['kNumberButtonColor']!;

  static Color get kPlayButtonColor => _colorTheme['kPlayButtonColor']!;

  static Color get kTextPlayButtonColor => _colorTheme['kTextPlayButtonColor']!;

  static Color get kClearButtonColor => _colorTheme['kClearButtonColor']!;

  static Color get kTextClearButtonColor =>
      _colorTheme['kTextClearButtonColor']!;
}

final Map<String, Color> defaultColorThema = {
  'kBackGroundColor': const Color(0xFF1F1F1F),
  'kTextColor': const Color(0xFFDDDFDF),
  'kTextTimerColor': const Color(0xFFA8C8FB),
  'kNumberButtonColor': const Color(0xFF292A2E),
  'kPlayButtonColor': const Color(0xFFA8C8FB),
  'kTextPlayButtonColor': const Color(0xFF092F72),
  'kClearButtonColor': const Color(0xFF5AB2F1),
  'kTextClearButtonColor': const Color(0xFF093A65),
};

final Map<String, Color> darkColorThema = {
  'kBackGroundColor': const Color(0xFFDDDFDF),
  'kTextColor': const Color(0xFF1F1F1F),
  'kTextTimerColor': const Color(0xFF092F72),
  'kNumberButtonColor': const Color(0xFFD3D4D0),
  'kPlayButtonColor': const Color(0xFF092F72),
  'kTextPlayButtonColor': const Color(0xFFA8C8FB),
  'kClearButtonColor': const Color(0xFF093A65),
  'kTextClearButtonColor': const Color(0xFF5AB2F1),
};

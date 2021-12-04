import 'package:flutter/cupertino.dart';

class ThemeService {
  static final ThemeService _singleton = ThemeService._internal();

  factory ThemeService() {
    return _singleton;
  }

  ThemeService._internal();

  static const primary = Color(0xff304ffe);
}

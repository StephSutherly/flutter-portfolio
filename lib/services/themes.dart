import 'package:flutter/cupertino.dart';

class ThemeService {
  static final ThemeService _singleton = ThemeService._internal();

  factory ThemeService() {
    return _singleton;
  }

  ThemeService._internal();

  static const primary = Color(0xff304ffe);
  static const primaryLight = Color(0xff7a7cff);
  static const dark = Color(0xff000000);
  static const light = Color(0xffffffff);

  static const mediumText = TextStyle(
    fontFamily: 'ArimaMadurai',
    fontSize: 18.0,
    color: ThemeService.dark,
  );
}

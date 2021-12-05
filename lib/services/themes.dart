import 'package:flutter/cupertino.dart';

class ThemeService {
  static final ThemeService _singleton = ThemeService._internal();

  factory ThemeService() {
    return _singleton;
  }

  ThemeService._internal();

  static const light = Color(0xffffffff);
  static const dark = Color(0xff000000);

  static const primaryLight = Color(0xff7a7cff);
  static const primary = Color(0xff304ffe);
  static const primaryDark = Color(0xff0026ca);

  static const secondaryLight = Color(0xffff795d);
  static const secondary = Color(0xfff44332);
  static const secondaryDark = Color(0xffb90007);

  static const primaryAccentLight = Color(0xff80e27e);
  static const primaryAccent = Color(0xff4caf50);
  static const primaryAccentDark = Color(0xff087f23);

  static const secondaryAccent = Color(0xffffff00);

  static const mediumText = TextStyle(
    fontFamily: 'ArimaMadurai',
    fontSize: 18.0,
    color: ThemeService.dark,
  );
}

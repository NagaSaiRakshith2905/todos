import 'package:flutter/material.dart';
import 'package:todos/themes/dark_theme.dart';
import 'package:todos/themes/light_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightThemeData;

  ThemeData get themedata => _themeData;

  bool isDarkMode() {
    return _themeData == darkThemeData;
  }

  set(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightThemeData) {
      set(darkThemeData);
    } else {
      set(lightThemeData);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProvider extends ChangeNotifier {
  String language = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }

  String getMainBackground() {
    return themeMode == ThemeMode.dark
        ? 'assets/images/bg.dark.png'
        : 'assets/images/main_bg.png';
  }
}

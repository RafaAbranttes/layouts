import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static saveTheme(bool isDarkTheme) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("isDarkTheme", isDarkTheme);
  }

  static get getTheme async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isDarkTheme = preferences.getBool("isDarkTheme") ?? false;
    return isDarkTheme;
  }
}

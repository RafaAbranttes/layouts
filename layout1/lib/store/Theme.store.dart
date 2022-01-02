import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout1/storage/Storage.dart';
import 'package:mobx/mobx.dart';
part 'Theme.store.g.dart';

class ThemeStore = _ThemeStoreBase with _$ThemeStore;

abstract class _ThemeStoreBase with Store {
  @observable
  ThemeMode _theme = ThemeMode.light;

  @action
  ThemeMode getTheme() => _theme;

  @action
  void setTheme(bool isDarkTheme) {
    if (isDarkTheme) {
      Storage.saveTheme(true);
      _theme = ThemeMode.dark;
    } else {
      Storage.saveTheme(false);
      _theme = ThemeMode.light;
    }
  }

}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout1/storage/Storage.dart';
import 'package:mobx/mobx.dart';
part 'Theme.store.g.dart';

class ThemeStore = _ThemeStoreBase with _$ThemeStore;

abstract class _ThemeStoreBase with Store {
  @observable
  bool _isDarkTheme = false;

  @computed
  bool get getIsDarkTheme => _isDarkTheme;

  @computed
  set setIsDarkTheme(bool isDarkTheme) {
    Storage.saveTheme(isDarkTheme);
    _isDarkTheme = isDarkTheme;
  }
}

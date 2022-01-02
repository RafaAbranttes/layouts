// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Theme.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on _ThemeStoreBase, Store {
  final _$_themeAtom = Atom(name: '_ThemeStoreBase._theme');

  @override
  ThemeMode get _theme {
    _$_themeAtom.reportRead();
    return super._theme;
  }

  @override
  set _theme(ThemeMode value) {
    _$_themeAtom.reportWrite(value, super._theme, () {
      super._theme = value;
    });
  }

  final _$_ThemeStoreBaseActionController =
      ActionController(name: '_ThemeStoreBase');

  @override
  ThemeMode getTheme() {
    final _$actionInfo = _$_ThemeStoreBaseActionController.startAction(
        name: '_ThemeStoreBase.getTheme');
    try {
      return super.getTheme();
    } finally {
      _$_ThemeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTheme(bool isDarkTheme) {
    final _$actionInfo = _$_ThemeStoreBaseActionController.startAction(
        name: '_ThemeStoreBase.setTheme');
    try {
      return super.setTheme(isDarkTheme);
    } finally {
      _$_ThemeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

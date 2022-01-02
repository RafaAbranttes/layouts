// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Theme.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on _ThemeStoreBase, Store {
  Computed<bool>? _$getIsDarkThemeComputed;

  @override
  bool get getIsDarkTheme =>
      (_$getIsDarkThemeComputed ??= Computed<bool>(() => super.getIsDarkTheme,
              name: '_ThemeStoreBase.getIsDarkTheme'))
          .value;

  final _$_isDarkThemeAtom = Atom(name: '_ThemeStoreBase._isDarkTheme');

  @override
  bool get _isDarkTheme {
    _$_isDarkThemeAtom.reportRead();
    return super._isDarkTheme;
  }

  @override
  set _isDarkTheme(bool value) {
    _$_isDarkThemeAtom.reportWrite(value, super._isDarkTheme, () {
      super._isDarkTheme = value;
    });
  }

  @override
  String toString() {
    return '''
getIsDarkTheme: ${getIsDarkTheme}
    ''';
  }
}

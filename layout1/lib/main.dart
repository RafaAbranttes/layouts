import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:layout1/constants/themes/themes.dart';
import 'package:layout1/service.dart';
import 'package:layout1/storage/Storage.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';
import 'store/store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupService();
  final themeController = GetIt.I<ThemeStore>();
  themeController.setIsDarkTheme = await Storage.getTheme as bool;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = GetIt.I<ThemeStore>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Layout 1',
        theme: themeController.getIsDarkTheme ? Themes().darkTheme : Themes().lightTheme,
        home: HomePage(),
      );
    });
  }
}

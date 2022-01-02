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
  themeController.setTheme(await Storage.getTheme as bool);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeStore>(context);
    return MultiProvider(
      providers: [
        Provider<ThemeStore>(
          create: (_) => ThemeStore(),
        ),
      ],
      child: Consumer<ThemeStore>(builder: (context, value, _) {
        return Observer(builder: (_) {
          return MaterialApp(
            title: 'Layout 1',
            theme: Themes().lightTheme,
            themeMode: value.getTheme(),
            darkTheme: Themes().darkTheme,
            home: HomePage(),
          );
        });
      }),
    );
  }
}

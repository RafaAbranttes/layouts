import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:layout1/storage/Storage.dart';
import 'package:layout1/store/store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final themeController = GetIt.I<ThemeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await Storage.getTheme as bool) {
              themeController.setIsDarkTheme = false;
            } else {
              themeController.setIsDarkTheme = true;
            }
          },
          child: const Text("Ola"),
        ),
      ),
    );
  }
}

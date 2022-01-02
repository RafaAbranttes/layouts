import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:layout1/storage/Storage.dart';
import 'package:layout1/store/store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if(await Storage.getTheme as bool){
              Provider.of<ThemeStore>(context, listen: false).setTheme(false);
            } else {
              Provider.of<ThemeStore>(context, listen: false).setTheme(true);
            }
          },
          child: const Text("Ola"),
        ),
      ),
    );
  }
}

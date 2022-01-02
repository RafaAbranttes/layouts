import 'package:get_it/get_it.dart';

import 'store/store.dart';

GetIt getIt = GetIt.I;

void setupService() {
  getIt.registerSingleton<ThemeStore>(ThemeStore());
}

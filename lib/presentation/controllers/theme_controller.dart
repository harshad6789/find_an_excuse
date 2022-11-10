import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../themes/custom_theme.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() => _box.read(_key) ?? false;

  void toggleTheme(bool isDarkMode) {
    if (isDarkMode) {
      changeTheme(CustomTheme.lightTheme);
      changeThemeMode(ThemeMode.light);
      saveTheme(false);
      ThemeData(brightness: Brightness.light);
    } else {
      changeTheme(CustomTheme.darkTheme);
      changeThemeMode(ThemeMode.dark);
      saveTheme(true);
      ThemeData(brightness: Brightness.dark);
    }
  }

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void changeTheme(ThemeData theme) => Get.changeTheme(theme);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}

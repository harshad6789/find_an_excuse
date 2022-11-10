import 'package:flutter/material.dart';

import 'theme_color.dart';
import 'theme_text.dart';

class CustomTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColor.darkPurple,
    scaffoldBackgroundColor: AppColor.darkPurple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: ThemeText.getDarkTextTheme(),
    appBarTheme: const AppBarTheme(elevation: 5, color: AppColor.violetCrayola),
  );
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColor.peachPuff,
    scaffoldBackgroundColor: AppColor.peachPuff,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: ThemeText.getLightTextTheme(),
    appBarTheme: const AppBarTheme(elevation: 5, color: AppColor.lightSalmon),
  );
}

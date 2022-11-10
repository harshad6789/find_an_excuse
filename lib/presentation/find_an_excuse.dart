import 'package:find_an_excuse/presentation/controllers/excuse_binding.dart';
import 'package:find_an_excuse/presentation/themes/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controllers/theme_controller.dart';
import 'screens/home.dart';

class FindAnExcuse extends StatelessWidget {
  final themeController = Get.put(ThemeController());
  FindAnExcuse({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.fade,
          initialBinding: ExcuseBinding(),
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: themeController.theme,
          home: Home(),
        );
      },
    );
  }
}

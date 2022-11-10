import 'package:find_an_excuse/presentation/controllers/excuse_controller.dart';
import 'package:find_an_excuse/presentation/controllers/theme_controller.dart';
import 'package:find_an_excuse/presentation/themes/theme_color.dart';
import 'package:find_an_excuse/presentation/widgets/selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Home extends GetWidget<ExcuseController> {
  final themeController = Get.find<ThemeController>();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      controller.loadQuickExcuse();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find an Excuse'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                themeController.toggleTheme(Get.isDarkMode);
              },
              icon: const Icon(Icons.dark_mode))
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: <Widget>[
                    Obx(
                      (() => Card(
                            color: Get.isDarkMode
                                ? AppColor.blush
                                : AppColor.blush,
                            elevation: 30,
                            margin: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 50.0),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                onLongPress: () {
                                  Clipboard.setData(ClipboardData(
                                    text: controller.excuse.isNotEmpty
                                        ? controller.excuse[0].excuse!
                                        : '',
                                  ));
                                  Get.snackbar('Copied', 'Copied to Clipboard',
                                      snackPosition: SnackPosition.BOTTOM);
                                },
                                child: Text(
                                  controller.excuse.isNotEmpty
                                      ? controller.excuse[0].excuse!
                                      : '',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                            ),
                          )),
                    ),
                    const SelectorWidget(),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

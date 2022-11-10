// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:find_an_excuse/domain/entities/app_error.dart';
import 'package:find_an_excuse/presentation/controllers/excuse_controller.dart';
import 'package:find_an_excuse/presentation/themes/theme_color.dart';
import 'package:find_an_excuse/presentation/widgets/app_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ExcuseDisplayWidget extends StatefulWidget {
  const ExcuseDisplayWidget({super.key});

  @override
  State<ExcuseDisplayWidget> createState() => _ExcuseDisplayWidgetState();
}

class _ExcuseDisplayWidgetState extends State<ExcuseDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    var args = Get.arguments;
    final controller = Get.find<ExcuseController>();

    if (args[0] == 1) {
      Future.delayed(const Duration(milliseconds: 500), (() {
        controller.loadCategoryExcuse(args[1].toString());
      }));
    } else if (args[0] == 2) {
      Future.delayed(const Duration(milliseconds: 500), (() {
        controller.loadRandomCategoryExcuses(args[1].toString(), args[2]);
      }));
    } else if (args[0] == 3) {
      Future.delayed(const Duration(milliseconds: 500), (() {
        controller.loadRandomExcuses(args[2]);
      }));
    } else {
      throw AppErrorWidget(
        errorType: AppErrorType.api,
        onPressed: () => Get.back(),
      );
    }

    return controller.obx(
        (status) => GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 800,
                  childAspectRatio: 2,
                  crossAxisSpacing: 1.5,
                  mainAxisSpacing: 1.5),
              itemCount: controller.excuse.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Get.isDarkMode ? AppColor.blush : AppColor.blush,
                      elevation: 20,
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10.0),
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: GestureDetector(
                            onLongPress: () {
                              Clipboard.setData(ClipboardData(
                                text: controller.excuse.isNotEmpty
                                    ? controller.excuse[index].excuse!
                                    : '',
                              ));
                              Get.snackbar('Copied', 'Copied to Clipboard',
                                  snackPosition: SnackPosition.BOTTOM);
                            },
                            child: Text(
                              controller.excuse.isNotEmpty
                                  ? controller.excuse[index].excuse!
                                  : '',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.fade,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          )),
                    ),
                  ),
                );
              },
            ),
        onError: (error) => AppErrorWidget(
            errorType: AppErrorType.api,
            onPressed: () {
              Get.back();
            }));
  }
}

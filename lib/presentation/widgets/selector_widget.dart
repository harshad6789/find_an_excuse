// ignore_for_file: must_be_immutable

import 'package:direct_select/direct_select.dart';
import 'package:find_an_excuse/presentation/screens/excuse_display.dart';
import 'package:find_an_excuse/presentation/themes/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'selection_item_widget.dart';

class SelectorWidget extends StatefulWidget {
  const SelectorWidget({super.key});

  @override
  State<SelectorWidget> createState() => _SelectorWidgetState();
}

class _SelectorWidgetState extends State<SelectorWidget> {
  final categories = [
    "Family",
    "Office",
    "Children",
    "College",
    "Party",
    "Funny",
    "Unbelievable",
    "Developers",
    "Gaming"
  ];

  final noe = List<int>.generate(20, (i) => i + 1);

  int selectedIndex1 = 0,
      selectedIndex2 = 0,
      selectedIndex3 = 0,
      selectedIndex4 = 0;

  List<Widget> _buildItems1() {
    return categories
        .map((val) => SelectionItemWidget(
              title: val,
            ))
        .toList();
  }

  List<Widget> _buildItems2() {
    return noe
        .map((val) => SelectionItemWidget(
              title: val.toString(),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 2),
          child: Text(
            "Select Category",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        DirectSelect(
          itemExtent: 45.0,
          selectedIndex: selectedIndex1,
          backgroundColor:
              Get.isDarkMode ? AppColor.violetCrayola : AppColor.lightSalmon,
          onSelectedItemChanged: (index) {
            Future.delayed(const Duration(milliseconds: 500), () {
              setState(() {
                selectedIndex1 = index!;
              });
            });
          },
          items: _buildItems1(),
          child: SelectionItemWidget(
            isForList: false,
            title: categories[selectedIndex1],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(left: 80, right: 80),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 30,
                backgroundColor: Get.isDarkMode
                    ? AppColor.violetCrayola
                    : AppColor.lightSalmon,
              ),
              onPressed: () {
                Future.delayed(Duration.zero, () {
                  Get.to(() => const ExcuseDisplay(),
                      arguments: [1, categories[selectedIndex1].toString(), 0]);
                });
              },
              child: Text(
                'Generate Excuse for ${categories[selectedIndex1]}',
                style: Theme.of(context).textTheme.subtitle2,
              )),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 2),
          child: Text(
            "Number of Excuses",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        DirectSelect(
          itemExtent: 45.0,
          selectedIndex: selectedIndex1,
          backgroundColor:
              Get.isDarkMode ? AppColor.violetCrayola : AppColor.lightSalmon,
          onSelectedItemChanged: (index) {
            Future.delayed(const Duration(milliseconds: 500), () {
              setState(() {
                selectedIndex2 = index!;
              });
            });
          },
          items: _buildItems2(),
          child: SelectionItemWidget(
            isForList: false,
            title: noe[selectedIndex2].toString(),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(left: 80, right: 80),
          child: TextButton(
              style: ElevatedButton.styleFrom(
                elevation: 30,
                backgroundColor: Get.isDarkMode
                    ? AppColor.violetCrayola
                    : AppColor.lightSalmon,
              ),
              onPressed: () {
                Future.delayed(Duration.zero, () {
                  Get.to(() => const ExcuseDisplay(), arguments: [
                    2,
                    categories[selectedIndex1].toString(),
                    noe[selectedIndex2]
                  ]);
                });
              },
              child: Text(
                noe[selectedIndex2] == 1
                    ? 'Generate ${noe[selectedIndex2]} Excuse for ${categories[selectedIndex1]}'
                    : 'Generate ${noe[selectedIndex2]} Excuses for ${categories[selectedIndex1]}',
                style: Theme.of(context).textTheme.subtitle2,
              )),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(left: 80, right: 80),
          child: TextButton(
              style: ElevatedButton.styleFrom(
                elevation: 30,
                backgroundColor: Get.isDarkMode
                    ? AppColor.violetCrayola
                    : AppColor.lightSalmon,
              ),
              onPressed: () {
                Future.delayed(Duration.zero, () {
                  Get.to(() => const ExcuseDisplay(),
                      arguments: [3, '', noe[selectedIndex2]]);
                });
              },
              child: Text(
                noe[selectedIndex2] == 1
                    ? 'Generate ${noe[selectedIndex2]} Random Excuse'
                    : 'Generate ${noe[selectedIndex2]} Random Excuses',
                style: Theme.of(context).textTheme.subtitle2,
              )),
        )
      ],
    );
  }
}

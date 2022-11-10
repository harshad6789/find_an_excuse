import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionItemWidget extends StatelessWidget {
  final String title;
  final bool isForList;

  const SelectionItemWidget(
      {Key? key, required this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
              child: _buildItem(context),
              padding: const EdgeInsets.all(10.0),
            )
          : Card(
              elevation: 30,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.unfold_more),
                  )
                ],
              ),
            ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../domain/entities/app_error.dart';

class AppErrorWidget extends StatelessWidget {
  final AppErrorType errorType;
  final Function() onPressed;

  const AppErrorWidget(
      {super.key, required this.errorType, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorType == AppErrorType.api
              ? 'Something Went Wrong'
              : 'Please check your Network Connection',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ButtonBar(
          children: [
            TextButton(
              onPressed: onPressed,
              child: const Text('Retry'),
            )
          ],
        )
      ],
    );
  }
}

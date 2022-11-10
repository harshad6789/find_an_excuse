import 'package:find_an_excuse/presentation/widgets/excuse_display_widget.dart';
import 'package:flutter/material.dart';

class ExcuseDisplay extends StatelessWidget {
  const ExcuseDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const ExcuseDisplayWidget());
  }
}

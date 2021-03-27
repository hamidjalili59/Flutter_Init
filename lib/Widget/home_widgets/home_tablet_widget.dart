import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:init_project/Widget/base/text_widget.dart';

class HomeTabletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(
        textkey: translate("tabletWidget.title"),
        fontweight: FontWeight.bold,
      ),
    );
  }
}

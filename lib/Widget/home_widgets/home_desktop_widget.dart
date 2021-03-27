import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:init_project/Widget/base/text_widget.dart';

class HomeDesktopWidget extends StatefulWidget {
  @override
  _HomeDesktopWidgetState createState() => _HomeDesktopWidgetState();
}

class _HomeDesktopWidgetState extends State<HomeDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(
        textkey: translate("desktopWidget.title"),
        fontweight: FontWeight.bold,
      ),
    );
  }
}

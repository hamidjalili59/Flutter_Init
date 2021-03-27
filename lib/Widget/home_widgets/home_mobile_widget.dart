import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:init_project/Widget/theme/app_theme.dart';
import 'package:init_project/Widget/theme/text_widget.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(
        textkey: translate("mobileWidget.title"),
        textcolor: Apptheme.red,
        textfamily: Apptheme.titilium,
        fontweight: FontWeight.bold,
      ),
    );
  }
}

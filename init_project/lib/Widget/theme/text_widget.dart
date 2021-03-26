//TextHelper
import 'package:flutter/material.dart';
import 'package:init_project/Widget/theme/app_theme.dart';

//for every text widget :
//first write a Textkey (***attention : we are using translate in every project***) and more   8)
class TextWidget extends StatelessWidget {
  final String textkey;
  final Color textcolor;
  final FontWeight fontweight;
  final String textfamily;
  final double wordspacing;
  final List shadows;
  TextWidget({
    @required this.textkey,
    this.textcolor,
    this.fontweight,
    this.textfamily,
    this.wordspacing,
    this.shadows,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textkey,
      style: TextStyle(
        color: textcolor,
        fontFamily: textfamily ?? Apptheme.titilium,
        wordSpacing: wordspacing,
        shadows: shadows ?? null,
        fontWeight: fontweight,
      ),
    );
  }
}

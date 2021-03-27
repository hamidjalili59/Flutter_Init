import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:init_project/Widget/theme/app_theme.dart';
import 'package:shamsi_date/shamsi_date.dart';

//EdgeInsets
EdgeInsetsGeometry apa(num) {
  return EdgeInsets.all(
    ScreenUtil().setWidth(num ?? 0),
  );
}

EdgeInsetsGeometry spa({top, right, bottom, left}) {
  return EdgeInsets.only(
    top: ScreenUtil().setHeight(top ?? 0),
    right: ScreenUtil().setWidth(right ?? 0),
    bottom: ScreenUtil().setHeight(bottom ?? 0),
    left: ScreenUtil().setWidth(left ?? 0),
  );
}

EdgeInsetsGeometry syma({horizontal, vertical}) {
  return EdgeInsets.symmetric(
    horizontal: ScreenUtil().setWidth(horizontal ?? 0),
    vertical: ScreenUtil().setHeight(vertical ?? 0),
  );
}

//Toast
void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: Apptheme.black,
    textColor: Apptheme.white,
    fontSize: 18.0,
  );
}

//DateAndTime
String dateTimeJalali() {
  Jalali jNow = Jalali.now();
  TimeOfDay tNow = TimeOfDay.now();
  final f = jNow.formatter;
  return '${tNow.minute} : ${tNow.hour} _ ${f.yyyy}/${f.mm}/${f.dd}';
}



//PerimissionsHandler

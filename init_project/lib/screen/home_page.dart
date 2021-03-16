import 'package:flutter/material.dart';
import 'package:init_project/Widget/base/responsive.dart';
import 'package:init_project/Widget/home_desktop_widget.dart';
import 'package:init_project/Widget/home_phone_widget.dart';
import 'package:init_project/Widget/home_tablet_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Responsive(
        mobile: HomePhoneWidget(),
        tablet: HomeTabletWidget(),
        desktop: HomeDesktopWidget(),
      ),
    );
  }
}

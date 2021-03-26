import 'package:flutter/material.dart';
import 'package:init_project/Widget/base/init_widget.dart';
import 'package:init_project/Widget/base/responsive.dart';
import 'package:init_project/Widget/home_mobile_widgets/home_mobile_widget.dart';
import 'package:init_project/Widget/home_widgets/home_desktop_widget.dart';
import 'package:init_project/Widget/home_widgets/home_tablet_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: Responsive(
        mobile: HomeMobileWidget(),
        tablet: HomeTabletWidget(),
        desktop: HomeDesktopWidget(),
      ),
    );
  }
}

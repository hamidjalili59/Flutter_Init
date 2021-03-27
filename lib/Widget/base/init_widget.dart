import 'package:flutter/material.dart';

class InitWidget extends StatelessWidget {
  final Widget child;
  final Color backgroundcolor;
  final PreferredSizeWidget appbar;
  final Widget bottomnavigationbar;

  const InitWidget({
    Key key,
    @required this.child,
    this.backgroundcolor,
    this.appbar,
    this.bottomnavigationbar,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar,
        bottomNavigationBar: bottomnavigationbar,
        backgroundColor: backgroundcolor ?? Colors.white,
        body: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}

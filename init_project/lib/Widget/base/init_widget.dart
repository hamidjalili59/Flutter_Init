import 'package:flutter/material.dart';

class InitWidget extends StatelessWidget {
  final Widget scaffoldbody;
  final Color scoffoldbackgroundcolor;
  final Axis axis;

  const InitWidget({
    Key key,
    @required this.scaffoldbody,
    this.scoffoldbackgroundcolor,
    this.axis,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: axis,
        child: Scaffold(
          backgroundColor: scoffoldbackgroundcolor,
          body: scaffoldbody,
        ),
      ),
    );
  }
}

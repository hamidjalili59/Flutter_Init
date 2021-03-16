import 'package:flutter/material.dart';
import 'package:init_project/utils/constants.dart';
import 'package:init_project/utils/functions/helper_functions.dart';

class HomeDesktopWidget extends StatefulWidget {
  @override
  _HomeDesktopWidgetState createState() => _HomeDesktopWidgetState();
}

class _HomeDesktopWidgetState extends State<HomeDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: MaterialButton(
          child: Container(
            child: Center(
              child: Text(
                dateTimeJalali(),
              ),
            ),
            width: 200,
            height: 200,
          ),
          onPressed: () {
            setState(() {
              showToast('salam hamid');
            });
          },
        ),
      ),
    );
  }
}

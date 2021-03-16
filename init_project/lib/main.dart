import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:init_project/screen/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate/flutter_translate.dart';

var delegate;

Future<void> main() async {
  delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en_US',
    supportedLocales: ['en_US', 'fa'],
  );
  runApp(
    LocalizedApp(
      delegate,
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            localizationDelegate,
          ],
          supportedLocales: localizationDelegate.supportedLocales,
          locale: localizationDelegate.currentLocale,
          theme: ThemeData(primarySwatch: Colors.blue),
          home: HomePage(),
        ),
      ),
    );
  }
}

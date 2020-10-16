import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
        backgroundColor: Color(0xffF5F3F4),
        primaryColor: Color(0xffA09392),
        accentColor: Color(0xffBA181B),
        highlightColor: Color(0xff161A1D),
        secondaryHeaderColor: Color(0xff5B5758),
        brightness: Brightness.light,
        primaryTextTheme: const TextTheme(
          bodyText1: const TextStyle(
            color: Color(0xffA09392),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

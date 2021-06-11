import 'package:flutter/material.dart';
import 'package:notification_app/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor: mainColor,
          // accentColor: mainColor
      ),
      home: SplashScreen(),
    );
  }
}


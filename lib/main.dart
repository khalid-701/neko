import 'package:neko/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neko',
      theme: ThemeData(
        primaryColor: Color(0xff4141A4),
      ),
      home: SplashScreenPage(),
    );
  }
}

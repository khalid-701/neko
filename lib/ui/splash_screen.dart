import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neko/ui/main_screen.dart';

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: Color(0xff222222),
  fontWeight: FontWeight.bold,
  fontSize: 26,
);

class SplashScreenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'images/logo.jpg',
                height: 200,
                width: 200,
              ),
              padding: EdgeInsets.only(top: 20),
            ),
            SizedBox(height: 50),
            Text(
              'NEKO-CHAN',
              style: titleTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home_navigation.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: NavBarHome(),
      title: Text('APPS  CUBE',
          style: GoogleFonts.firaSans(
            textStyle: TextStyle(
                fontSize: 24,
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
                color: Colors.grey[700]),
          )),
      image: Image.asset(
        'assets/images/appscuberot.png',
      ),
      // backgroundColor: Colors.white,
      gradientBackground: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
            Colors.blue[300],
            Colors.white30,
            Colors.white54,
            Colors.white,
          ]),
      // styleTextUnderTheLoader: TextStyle(),
      photoSize: 125.0,
      loaderColor: Colors.blue,
    );
  }
}

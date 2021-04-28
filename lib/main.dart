import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socia/splashscreen.dart';

void main() {
  runApp(
    SociaApp(),
  );
}

class SociaApp extends StatefulWidget {
  @override
  _SociaAppState createState() => _SociaAppState();
}

class _SociaAppState extends State<SociaApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[400],
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Apps Cube',
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}

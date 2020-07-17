import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/welcome_screen.dart';
import 'pages/login_screen.dart';

import 'page_modules/backdrop.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/backdrop': (context)=> Backdrop(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xff780003),
        accentColor: Color(0xff424242),
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: LoginScreen(),
          ),
        ),
      ),
    );
  }
}

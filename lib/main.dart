import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:roomserviceapp/authentication/firebase_auth_service.dart';
import 'package:roomserviceapp/pages/landing_page.dart';
import 'package:roomserviceapp/authentication/auth_service.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Definition of Provider on top of all widgets to provide authentication service to other widgets
    return Provider<AuthService>.value(
      value: FirebaseAuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Color(0xffCB1C3F),
          accentColor: Color(0xff424242),
        ),
        home: SafeArea(
          child: Scaffold(
            body: LandingPage(),
          ),
        ),
      ),
    );
  }
}

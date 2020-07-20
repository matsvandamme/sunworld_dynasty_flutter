import 'package:flutter/material.dart';
import 'package:roomserviceapp/authentication/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:roomserviceapp/pages/welcome_screen.dart';
import 'package:roomserviceapp/page_modules/store.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // Call Provider AuthService as defined in main.dart
    final AuthService auth = Provider.of<AuthService>(context);
    return StreamBuilder(
      stream: auth.onAuthStateChanged,
      builder: (_, AsyncSnapshot<User> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          return user == null ? WelcomeScreen() : Store();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

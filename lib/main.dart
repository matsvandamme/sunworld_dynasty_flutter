import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:roomserviceapp/authentication/firebase_auth_service.dart';
import 'package:roomserviceapp/pages/landing_page.dart';
import 'package:roomserviceapp/authentication/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    App(),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(AssetImage('assets/images/drink.jpeg'), context);
    precacheImage(AssetImage('assets/images/food.jpeg'), context);
    precacheImage(AssetImage('assets/images/dessert.jpeg'), context);
  }

  @override
  Widget build(BuildContext context) {
    // Definition of Provider on top of all widgets to provide authentication service to other widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xffCB1C3F),
        accentColor: Color(0xff424242),
      ),
      home: SafeArea(
        child: Scaffold(
          // ! Body has to be replaced by BLoC logic
          body: null,
        ),
      ),
    );
  }
}

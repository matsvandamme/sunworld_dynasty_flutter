import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'page_modules/backdrop.dart';
import 'page_modules/bottomappbar.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xffaf002c),
        accentColor: Color(0xff424242),
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          elevation: 5,
          icon: const Icon(Icons.shopping_cart),
          label: const Text('Order'),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
        body: Center(child: Backdrop()),
      ),
    );
  }
}

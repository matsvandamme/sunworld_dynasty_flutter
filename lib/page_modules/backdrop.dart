import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:roomserviceapp/pages/menu.dart';

class Backdrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      animationCurve: Curves.easeInOutBack,
      title: Text("Sunworld Dynasty Hotel Taipei"),
      backLayer: Center(
        child: null,
      ),
      frontLayer: Container(
        color: Colors.white,
        child: Menu(),
      ),
      iconPosition: BackdropIconPosition.action,
    );
  }
}

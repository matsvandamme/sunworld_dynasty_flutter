import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

import '../pages/page_control.dart';

class Backdrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      title: Text("Sunworld Dynasty Hotel Taipei"),
      backLayer: Center(
        child: null,
      ),
      frontLayer: Container(
        color: Colors.grey[500],
        child: Pagecontrol(),
      ),
      iconPosition: BackdropIconPosition.action,
    );
  }
}

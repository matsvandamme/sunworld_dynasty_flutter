import 'package:flutter/material.dart';

import 'package:roomserviceapp/pages/menu.dart';


class Pagecontrol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        //Food(),
        Menu(),
        //Dessert(),
      ],
    );
  }
}

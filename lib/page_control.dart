import 'package:flutter/material.dart';

import 'package:roomserviceapp/food.dart';
//import 'package:roomserviceapp/drinks.dart';

class Pagecontrol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Food(),
        //Drinks(),
      ],
    );
  }
}

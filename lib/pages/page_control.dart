import 'package:flutter/material.dart';
import 'package:roomserviceapp/pages/dessert.dart';

import 'package:roomserviceapp/pages/food.dart';
//import 'package:roomserviceapp/drinks.dart';

class Pagecontrol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Dessert(),
        Food(),

        //Drinks(),
      ],
    );
  }
}

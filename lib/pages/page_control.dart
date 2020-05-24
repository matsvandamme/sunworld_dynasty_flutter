import 'package:flutter/material.dart';
import 'package:roomserviceapp/pages/dessert.dart';
import 'package:roomserviceapp/pages/drink.dart';
import 'package:roomserviceapp/pages/food.dart';

class Pagecontrol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        //Food(),
        Drink(),
        //Dessert(),
      ],
    );
  }
}

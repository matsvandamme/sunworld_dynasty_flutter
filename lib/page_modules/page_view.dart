import 'package:flutter/material.dart';
import 'package:roomserviceapp/external_packages/utils.dart';
import 'package:roomserviceapp/pages/food_menu.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();
  ///Page Controller for the PageView
  final controller = PageController(
    initialPage: 0,
  );
  var scrollDirection = Axis.horizontal;
  var actionIcon = Icons.swap_vert;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      ///A Page View with 3 children
      body: PageView(
        controller: controller,
        scrollDirection: scrollDirection,
        ///Enable physics property to provide your PageView with a
        ///custom scroll behaviour
        ///Here BouncingScrollPhysics will pull back the boundary
        ///item (first or last) if the user tries to scroll further.
        //physics: BouncingScrollPhysics(),
        pageSnapping: true,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Card(
              color: Color(0xffeeeeee),
              elevation: 0,
              margin: EdgeInsets.all(0),
              child: Center(
                child: FoodMenu(),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.white,
              elevation: 4,
              margin: EdgeInsets.all(0),
              child: Center(
                child: Text(
                  "Card 2",
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.white,
                      fontSize: 24),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.pink,
              elevation: 4,
              margin: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  "Card 3",
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.white,
                      fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
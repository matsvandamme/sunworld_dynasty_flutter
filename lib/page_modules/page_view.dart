import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:roomserviceapp/pages/dessert_menu.dart';
import 'package:roomserviceapp/pages/drinks_menu.dart';
import 'package:roomserviceapp/pages/food_menu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

var _currentPageNotifier = ValueNotifier<int>(0);
final controller = PageController(
  initialPage: 0,
);
var scrollDirection = Axis.horizontal;
var actionIcon = Icons.swap_vert;

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  ///Page Controller for the PageView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      ///A Page View with 3 children
      body: PageView(
        onPageChanged: (int index) {
          _currentPageNotifier.value = index;
        },
        physics: BouncingScrollPhysics(),
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
              elevation: 0,
              margin: EdgeInsets.all(0),
              child: Center(
                child: DrinksMenu(),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Color(0xffeeeeee),
              elevation: 0,
              margin: EdgeInsets.all(0),
              child: Center(
                child: DessertMenu(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageIndicator extends StatefulWidget {
  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 4.0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SmoothPageIndicator(
            controller: controller, // PageController
            count: 3,
            effect: WormEffect(
              activeDotColor: Color(0xff780003),
              dotColor: Colors.white,
              paintStyle: PaintingStyle.stroke,
              strokeWidth: 1,
            ), // your preferred effect
          ),
        ),
      ),
    );
  }
}

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
      body: PageViewDriver(
          currentPageNotifier: _currentPageNotifier,
          controller: controller,
          scrollDirection: scrollDirection),
    );
  }
}

class PageViewDriver extends StatelessWidget {
  const PageViewDriver({
    Key key,
    @required ValueNotifier<int> currentPageNotifier,
    @required this.controller,
    @required this.scrollDirection,
  })  : _currentPageNotifier = currentPageNotifier,
        super(key: key);

  final ValueNotifier<int> _currentPageNotifier;
  final PageController controller;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (int index) {
        _currentPageNotifier.value = index;
      },
      physics: BouncingScrollPhysics(),
      controller: controller,
      scrollDirection: scrollDirection,
      pageSnapping: true,
      children: <Widget>[
        FoodPage(),
        DrinkPage(),
        DessertPage(),
      ],
    );
  }
}

class DessertPage extends StatelessWidget {
  const DessertPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Card(
        color: Color(0xffeeeeee),
        elevation: 0,
        margin: EdgeInsets.all(0),
        child: Center(
          child: DessertMenu(),
        ),
      ),
    );
  }
}

class DrinkPage extends StatelessWidget {
  const DrinkPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Card(
        color: Colors.white,
        elevation: 0,
        margin: EdgeInsets.all(0),
        child: Center(
          child: DrinksMenu(),
        ),
      ),
    );
  }
}

class FoodPage extends StatelessWidget {
  const FoodPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Card(
        color: Color(0xffeeeeee),
        elevation: 0,
        margin: EdgeInsets.all(0),
        child: Center(
          child: FoodMenu(),
        ),
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

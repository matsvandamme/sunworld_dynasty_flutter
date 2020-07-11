import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class pageIndicator extends StatefulWidget {
  @override
  _pageIndicatorState createState() => _pageIndicatorState();
}

class _pageIndicatorState extends State<pageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );;
  }
}

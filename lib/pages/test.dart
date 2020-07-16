import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:align_positioned/align_positioned.dart';
import 'package:roomserviceapp/external_packages/utils.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Color(0xffCB1C3F);

    Path path = Path();

    double radius = 124.0;

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - radius);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width - radius, size.height - radius),
            radius: radius),
        0,
        pi / 2,
        false);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}

class _TestState extends State<Test> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  double overlayWidthFraction = 0.85;
  double overlayHeightFraction = 0.65;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => CustomPaint(
              painter: MyPainter(),
              child: LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * overlayWidthFraction,
                  height: constraints.maxHeight * overlayHeightFraction,
                  child: Container(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.fromLTRB(constraints.maxWidth*overlayWidthFraction*0.148, constraints.maxHeight*overlayHeightFraction*0.246, constraints.maxWidth*overlayWidthFraction*0.4, constraints.maxHeight*overlayHeightFraction*0.41),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

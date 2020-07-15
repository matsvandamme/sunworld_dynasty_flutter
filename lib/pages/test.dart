import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;

    // Left eye
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromLTWH(-20, 40, 100, 100), Radius.circular(20)),
      paint,);
//    );
//    // Right eye
//    canvas.drawOval(
//      Rect.fromLTWH(size.width - 120, 40, 100, 100),
//      paint,
//    );
//    // Mouth
//    final mouth = Path();
//    mouth.moveTo(size.width * 0.8, size.height * 0.6);
//    mouth.arcToPoint(
//      Offset(size.width * 0.2, size.height * 0.6),
//      radius: Radius.circular(150),
//    );
//    mouth.arcToPoint(
//      Offset(size.width * 0.8, size.height * 0.6),
//      radius: Radius.circular(200),
//      clockwise: false,
//    );
//
//    canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(_MyPainter oldDelegate) => false;
}

class _TestState extends State<Test> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Outer white container with padding
        body: Container(
          color: Colors.white,
          child: LayoutBuilder(
            // Inner yellow container
            builder: (_, constraints) =>
                Container(
                  width: constraints
                      .widthConstraints()
                      .maxWidth,
                  height: constraints
                      .heightConstraints()
                      .maxHeight,
                  color: Colors.yellow,
                  child: CustomPaint(painter: _MyPainter()),
                ),
          ),
        ),
      ),
    );
  }
}

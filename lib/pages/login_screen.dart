import 'dart:math';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
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

    canvas.drawShadow(path.shift(Offset(0, -5)), Colors.black, 8.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_LoginOverlayPainter oldDelegate) => false;
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildOverlay();
  }
}

LayoutBuilder _buildOverlay() {
  return LayoutBuilder(
    builder: (context, constraints) => CustomPaint(
      painter: _LoginOverlayPainter(),
      child: Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        color: Colors.amber,
        margin: EdgeInsets.fromLTRB(0, 0, 0, constraints.maxHeight*0.85),
      ),
    ),
  );
}

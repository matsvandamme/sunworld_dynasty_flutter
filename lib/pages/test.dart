import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Color(0xffCB1C3F);

    // Left eye
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromLTWH(-200, -200, size.width * 1.33, size.height * 0.95),
          Radius.circular(124)),
      paint,
    );
  }

  @override
  bool shouldRepaint(_MyPainter oldDelegate) => false;
}

class _TestState extends State<Test> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Stack(
              children: [
                LayoutBuilder(
                  // Inner yellow container
                  builder: (_, constraints) => Container(
                    width: constraints.widthConstraints().maxWidth,
                    height: constraints.heightConstraints().maxHeight,
                    color: Colors.white,
                    child: CustomPaint(
                      painter: _MyPainter(),
                    ),
                  ),
                ),
                Positioned(
                  top:20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Testafdsfdfa',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Testfadf',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Test',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Testfdf',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

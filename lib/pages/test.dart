import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

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

    canvas.drawShadow(path.shift(Offset(0, -5)), Colors.black, 8.0, true);
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
  double overlayHeightFraction = 0.66;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => CustomPaint(
            painter: MyPainter(),
            child: Stack(children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * overlayWidthFraction,
                  height: constraints.maxHeight * overlayHeightFraction,
                  child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(
                        constraints.maxWidth * overlayWidthFraction * 0,
                        constraints.maxHeight * overlayHeightFraction * 0.1,
                        constraints.maxWidth * overlayWidthFraction * 0.7,
                        constraints.maxHeight * overlayHeightFraction * (1-0.23)),
                    child: Image(image: AssetImage('assets/images/VectorPetal.png')),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * overlayWidthFraction,
                  height: constraints.maxHeight * overlayHeightFraction,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(
                        constraints.maxWidth * overlayWidthFraction * 0.148,
                        constraints.maxHeight * overlayHeightFraction * 0.246,
                        constraints.maxWidth * overlayWidthFraction * 0.4,
                        constraints.maxHeight * overlayHeightFraction * 0.41),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('''Sunworld
                                  Dynasty
                                  Hotel
                                  Taipei''',
                            maxLines: 20,
                            style: GoogleFonts.workSans(
                              height: 0.50,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )),
                        Divider(
                          color: Colors.white,
                          thickness: 1,
                          endIndent: 45,
                        ),
                        Text(
                          'Quarantine App',
                          style: GoogleFonts.workSans(
                            height: 0.50,
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:roomserviceapp/authentication/auth_service.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {

    final AuthService auth = Provider.of<AuthService>(context);

    void _signIn() {
      auth.signInWithEmailAndPassword('matsvandamme@gmail.com', 'nend5XV5');
    }

    double _overlayWidthFraction = 0.85;
    double _overlayHeightFraction = 0.66;

    return Scaffold(
      body: Stack(children: [
        LayoutBuilder(
          builder: (context, constraints) => CustomPaint(
            painter: _WelcomeOverlayPainter(),
            child: Stack(children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * _overlayWidthFraction,
                  height: constraints.maxHeight * _overlayHeightFraction,
                  child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(
                        constraints.maxWidth * _overlayWidthFraction * 0,
                        constraints.maxHeight * _overlayHeightFraction * 0.09,
                        constraints.maxWidth * _overlayWidthFraction * 0.70,
                        constraints.maxHeight *
                            _overlayHeightFraction *
                            (1 - 0.23)),
                    child:
                        Image(image: AssetImage('assets/images/SWDPetal2.png')),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * _overlayWidthFraction,
                  height: constraints.maxHeight * _overlayHeightFraction,
                  child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(
                        constraints.maxWidth * _overlayWidthFraction * 0.148,
                        constraints.maxHeight * _overlayHeightFraction * 0.246,
                        constraints.maxWidth * _overlayWidthFraction * 0.4,
                        constraints.maxHeight * _overlayHeightFraction * 0.41),
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
        LayoutBuilder(
          builder: (context, constraints) => Container(
            margin: EdgeInsets.fromLTRB(constraints.maxWidth * 0.06,
                constraints.maxHeight * 0.75, constraints.maxWidth * 0.06, 0),
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTheme(
                  minWidth: 129,
                  height: 53,
                  child: RaisedButton(
                    elevation: 7,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      side: BorderSide(
                        color: Color(0xffCB1C3F),
                      ),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xffCB1C3F),
                      ),
                    ),
                    //color: Color(0xffb00020),
                    onPressed: _signIn,
                  ),
                ),
                ButtonTheme(
                  minWidth: 129,
                  height: 53,
                  child: RaisedButton(
                    elevation: 7,
                    color: Color(0xffb00020),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      side: BorderSide(
                        color: Color(0xffb00020),
                      ),
                    ),
                    child: Text(
                      'Log-in',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    //color: Color(0xffb00020),
                    onPressed: _signIn,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class _WelcomeOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Color(0xffCB1C3F);

    double radius = 124.0;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - radius)
      ..arcTo(
          Rect.fromCircle(
              center: Offset(size.width - radius, size.height - radius),
              radius: radius),
          0,
          pi / 2,
          false)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawShadow(path.shift(Offset(0, -5)), Colors.black, 8.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_WelcomeOverlayPainter oldDelegate) => false;
}

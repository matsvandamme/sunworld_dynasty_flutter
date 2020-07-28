import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:roomserviceapp/pages/login_page.dart';
import 'package:roomserviceapp/pages/registration_page.dart';
import 'package:roomserviceapp/user_repository.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();

  final UserRepository _userRepository;
  WelcomeScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);
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
    double _overlayWidthFraction = 0.85;
    double _overlayHeightFraction = 0.66;

    return Scaffold(
      body: Stack(children: [
        Overlay(
            overlayWidthFraction: _overlayWidthFraction,
            overlayHeightFraction: _overlayHeightFraction),
        Buttons(),
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  LayoutBuilder Buttons() {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.fromLTRB(constraints.maxWidth * 0.06,
            constraints.maxHeight * 0.75, constraints.maxWidth * 0.06, 0),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            registerButton(),
            loginButton(),
          ],
        ),
      ),
    );
  }

  ButtonTheme loginButton() {
    return ButtonTheme(
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
          'Sign in',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        //color: Color(0xffb00020),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(
                userRepository: widget._userRepository,
              ),
            ),
          );
        },
      ),
    );
  }

  ButtonTheme registerButton() {
    return ButtonTheme(
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationScreen(
                userRepository: widget._userRepository,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Overlay extends StatelessWidget {
  const Overlay({
    Key key,
    @required double overlayWidthFraction,
    @required double overlayHeightFraction,
  })  : _overlayWidthFraction = overlayWidthFraction,
        _overlayHeightFraction = overlayHeightFraction,
        super(key: key);

  final double _overlayWidthFraction;
  final double _overlayHeightFraction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomPaint(
        painter: _WelcomeOverlayPainter(),
        child: Stack(children: [
          OverlayPetalFlower(
              overlayWidthFraction: _overlayWidthFraction,
              overlayHeightFraction: _overlayHeightFraction),
          OverlayText(
              overlayWidthFraction: _overlayWidthFraction,
              overlayHeightFraction: _overlayHeightFraction),
        ]),
      ),
    );
  }
}

class OverlayText extends StatelessWidget {
  const OverlayText({
    Key key,
    @required double overlayWidthFraction,
    @required double overlayHeightFraction,
  })  : _overlayWidthFraction = overlayWidthFraction,
        _overlayHeightFraction = overlayHeightFraction,
        super(key: key);

  final double _overlayWidthFraction;
  final double _overlayHeightFraction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
    );
  }
}

class OverlayPetalFlower extends StatelessWidget {
  const OverlayPetalFlower({
    Key key,
    @required double overlayWidthFraction,
    @required double overlayHeightFraction,
  })  : _overlayWidthFraction = overlayWidthFraction,
        _overlayHeightFraction = overlayHeightFraction,
        super(key: key);

  final double _overlayWidthFraction;
  final double _overlayHeightFraction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth * _overlayWidthFraction,
        height: constraints.maxHeight * _overlayHeightFraction,
        child: Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.fromLTRB(
              constraints.maxWidth * _overlayWidthFraction * 0,
              constraints.maxHeight * _overlayHeightFraction * 0.09,
              constraints.maxWidth * _overlayWidthFraction * 0.70,
              constraints.maxHeight * _overlayHeightFraction * (1 - 0.23)),
          child: Image(image: AssetImage('assets/images/SWDPetal2.png')),
        ),
      ),
    );
  }
}

// WELCOME SCREEN WIDGET DONE

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

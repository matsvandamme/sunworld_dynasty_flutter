import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}

class PasswordFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Password can\'t be empty' : null;
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    double _screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.transparent,
          margin: EdgeInsets.fromLTRB(
              0, 0.5 * _screenHeight, 0, 0),
          child: Stack(
            children: [
              _LoginOverlay(),
              Column(
                children: [
                  TextFormField(
                    key: Key('email'),
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: EmailFieldValidator.validate,
                    onSaved: (String value) => _email = value,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginOverlay extends StatelessWidget {
  const _LoginOverlay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.widthConstraints().maxWidth,
        height: constraints.heightConstraints().maxHeight,
        color: Colors.transparent,
        child: CustomPaint(
          painter: _LoginOverlayPainter(),
        ),
      ),
    );
  }
}

class _LoginOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Color(0xffCB1C3F);

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.5, size.height * 0.75)
      ..close();

    //canvas.drawShadow(path.shift(Offset(0, -15)), Colors.black, 3, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_LoginOverlayPainter oldDelegate) => false;
}

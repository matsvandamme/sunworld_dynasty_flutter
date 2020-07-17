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
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          resizeToAvoidBottomInset: false,
          body: Form(
            key: formKey,
            child: ListView(
              children: [
                TextFormField(
                  key: Key('email'),
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextFormField(
                  key: Key('password'),
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  LayoutBuilder buildLoginOverlay() {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        color: Colors.amberAccent,
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

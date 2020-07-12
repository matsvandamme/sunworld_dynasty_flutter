import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:roomserviceapp/main.dart';
import 'package:roomserviceapp/page_modules/backdrop.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              // ignore: missing_return
              validator: (input) {
                if (input.isEmpty) {
                  return "Please type an email";
                  // ignore: missing_return, missing_return, missing_return
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              // ignore: missing_return
              validator: (input) {
                if (input.length < 6) {
                  // ignore: missing_return
                  return "Your password needs to be at least 6 characters";
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: signIn,
              child: Text('Sign in'),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushReplacementNamed(context, '/backdrop'),
              child: Text('Skip'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signIn() async{
    final formState= _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        AuthResult user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.pushReplacementNamed(context, '/backdrop');
      }catch(e){
        print(e.message);
      }
  }
}}
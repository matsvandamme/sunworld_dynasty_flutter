import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roomserviceapp/authentication_bloc/authentication_bloc.dart';

class SignOutPlaceholder extends StatefulWidget {
  SignOutPlaceholder({Key key}) : super(key: key);

  @override
  _SignOutPlaceholderState createState() => _SignOutPlaceholderState();
}

class _SignOutPlaceholderState extends State<SignOutPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(onPressed: () {
        BlocProvider.of<AuthenticationBloc>(context)
            .add(AuthenticationLoggedOut());
      }),
    );
  }
}

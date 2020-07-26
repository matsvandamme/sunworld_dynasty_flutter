import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roomserviceapp/authentication_bloc/authentication_bloc.dart';
import 'package:roomserviceapp/login_bloc/login.dart';
import 'package:bloc/bloc.dart';

class PlaceholderLogout extends StatefulWidget {
  @override
  _PlaceholderLogoutState createState() => _PlaceholderLogoutState();
}

class _PlaceholderLogoutState extends State<PlaceholderLogout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          child: RaisedButton(
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).add(
                AuthenticationLoggedOut(),
              );
            },
            child: Text('Sign out'),
            color: Theme.of(context).primaryColor,
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
        appBar: AppBar(
          title: Text('Logout'),
        ),
      ),
    );
  }
}

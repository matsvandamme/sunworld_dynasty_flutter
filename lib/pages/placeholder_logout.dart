import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roomserviceapp/authentication_bloc/authentication_bloc.dart';

class PlaceholderLogout extends StatefulWidget {
  @override
  _PlaceholderLogoutState createState() => _PlaceholderLogoutState();
}

class _PlaceholderLogoutState extends State<PlaceholderLogout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: RaisedButton(
                onPressed: () {
                  BlocProvider.of<AuthenticationBloc>(context).add(
                    AuthenticationLoggedOut(),
                  );
                },
                child: Text('Sign out'),
                color: Color(0xffCB1C3F),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
      appBar: AppBar(
        primary: true,
        backgroundColor: Color(0xff780003),
        title: Text('Logout'),
      ),
    );
  }
}

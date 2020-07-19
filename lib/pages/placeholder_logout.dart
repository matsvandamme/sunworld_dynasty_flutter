import 'package:flutter/material.dart';
import 'package:roomserviceapp/authentication/auth_service.dart';
import 'package:provider/provider.dart';

class PlaceholderLogout extends StatefulWidget {
  @override
  _PlaceholderLogoutState createState() => _PlaceholderLogoutState();
}

class _PlaceholderLogoutState extends State<PlaceholderLogout> {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of<AuthService>(context);

    void _signOut() {
      auth.signOut();
    }

    return MaterialApp(
      home: Scaffold(
        body: Form(
          child: RaisedButton(
            onPressed: _signOut,
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

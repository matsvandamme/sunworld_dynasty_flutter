import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roomserviceapp/login_bloc/login_form.dart';
import 'package:roomserviceapp/user_repository.dart';
import 'package:roomserviceapp/login_bloc/login.dart';

class RegistrationScreen extends StatelessWidget {
  final UserRepository _userRepository;

  RegistrationScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(userRepository: _userRepository),
        child: LoginForm(userRepository: _userRepository),
      ),
    );
  }
}

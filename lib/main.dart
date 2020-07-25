import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roomserviceapp/authentication_bloc/authentication_bloc.dart';
import 'package:roomserviceapp/user_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final UserRepository userRepository = UserRepository();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    BlocProvider(
      create: (BuildContext context) =>
          AuthenticationBloc(userRepository: userRepository)
            ..add(
              AuthenticationStarted(),
            ),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatefulWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(AssetImage('assets/images/drink.jpeg'), context);
    precacheImage(AssetImage('assets/images/food.jpeg'), context);
    precacheImage(AssetImage('assets/images/dessert.jpeg'), context);
  }

  @override
  Widget build(BuildContext context) {
    // Definition of Provider on top of all widgets to provide authentication service to other widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xffCB1C3F),
        accentColor: Color(0xff424242),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
        return Container();
      }),
    );
  }
}

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeScreenShown());

  @override
  Stream<WelcomeState> mapEventToState(
    WelcomeEvent event,
  ) async* {
    if (event is BackToWelcomeScreen) {
      yield WelcomeScreenShown();
    } else if (event is ToLoginScreen) {
      yield LogInScreenShown();
    } else if (event is ToRegistrationScreen) {
      yield RegistrationScreenShown();
    }
  }
}

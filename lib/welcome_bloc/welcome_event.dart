part of 'welcome_bloc.dart';

abstract class WelcomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class BackToWelcomeScreen extends WelcomeEvent {}

class ToLoginScreen extends WelcomeEvent {}

class ToRegistrationScreen extends WelcomeEvent {}

part of 'welcome_bloc.dart';

abstract class WelcomeState extends Equatable {
  const WelcomeState();
  @override
  List<Object> get props => [];
}

class WelcomeScreenShown extends WelcomeState {}

class LogInScreenShown extends WelcomeState {}

class RegistrationScreenShown extends WelcomeState {}

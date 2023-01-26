part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class AdminLoginEvent extends LoginEvent {
  AdminLoginEvent({required this.email, required this.password});

  String email;
  String password;
}

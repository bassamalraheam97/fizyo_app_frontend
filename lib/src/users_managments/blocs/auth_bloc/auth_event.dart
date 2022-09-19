import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {}

class AuthEventLogin extends AuthEvent {
  final String email;
  final String password;

  AuthEventLogin(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class AuthEventLogout extends AuthEvent {
  AuthEventLogout();
  @override
  List<Object?> get props => [];
}

class AuthEventCheckCurrentState extends AuthEvent {
  AuthEventCheckCurrentState();
  @override
  List<Object?> get props => [];
}

// ignore_for_file: use_function_type_syntax_for_parameters

import 'package:bloc/bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/user_repository.dart';
import '../../domain/user.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository _userRepository;
  AuthBloc(
    this._userRepository,
  ) : super(const AuthStateInitial(null)) {
    const storage = FlutterSecureStorage();

    on<AuthEventLogin>((event, emit) async {
      emit(const AuthStateChecking(null));
      try {
        String token = await _userRepository.login(
            email: event.email, password: event.password);
        await storage.write(key: "token", value: token);
        // print('-----------Token is $token --------------');
        emit(const AuthStateAuthenticated(null));
      } catch (e) {
        print(e);
        emit(AuthStateFailure(e.toString(), null));
      }
    });
    on<AuthEventCheckCurrentState>((event, emit) async {
      emit(const AuthStateChecking(null));
      try {
        String? token = await storage.read(key: "token");
        print('-----------Token is $token --------------');
        if (token != null) {
          List<User>? users = await _userRepository.getUsers(token);
          emit(AuthStateAuthenticated(users?[0]));
        } else {
          emit(const AuthStateUnAuthenticated(null));
        }
      } catch (e) {
        emit(AuthStateFailure(e.toString(), null));
      }
    });
    on<AuthEventLogout>((event, emit) async {
      emit(const AuthStateChecking(null));
      try {
        await storage.delete(
          key: "token",
        );
        emit(const AuthStateUnAuthenticated(null));
      } catch (e) {
        print(e);
        emit(AuthStateFailure(e.toString(), null));
      }
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';

class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  // var options = {
  //   'baseUrl': 'http://localhost:8000',
  //   'connectTimeout': '5000',
  //   'receiveTimeout': '3000',
  // };
  // Dio dio = Dio(BaseOptions(
  //   baseUrl: 'http://localhost:8000',
  //   connectTimeout: 5000,
  //   receiveTimeout: 3000,
  // ));

  UserFormBloc() : super(UserFormStateInitial(1 / 8, 1, 8)) {
    on<UserFormEventSubmit>((event, emit) async {
      emit(
          UserFormStateSubmitting(event.currentStep / 8, event.currentStep, 8));
      // try {
      print('${event.formData}----------------------------------------');
      // final user = User.fromJson(event.formData);
      // await _accountsService.createAccount(user, null);
      emit(UserFormStateSuccess((event.currentStep + 1) / 8, 2, 8));
      // } catch (e) {
      // emit(UserFormStateFailure(
      //     e.toString(), event.currentStep / 8, event.currentStep, 8));
      // }
    });
    on<UserFormEventProceed>((event, emit) async {
      // emit(
      //     UserFormStateSubmitting(event.currentStep / 8, event.currentStep, 8));
      // try {
      // print('${event.formData}----------------------------------------');
      // final user = User.fromJson(event.formData);
      // await _accountsService.createAccount(user, null);
      emit(UserFormStateSuccess(
          (event.currentStep + 1) / 8, event.currentStep + 1, 8));
      // } catch (e) {
      // emit(UserFormStateFailure(
      //     e.toString(), event.currentStep / 8, event.currentStep, 8));
      // }
    });
    on<UserFormEventBack>((event, emit) async {
      emit(UserFormStateSuccess(
          (event.currentStep - 1) / 8, event.currentStep - 1, 8));
    });
  }
}

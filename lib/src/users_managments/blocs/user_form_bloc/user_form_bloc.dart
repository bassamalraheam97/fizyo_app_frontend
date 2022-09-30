import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fizyo_app_frontend/src/users_managments/application/accounts_service.dart';

import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';

import 'package:reactive_forms/reactive_forms.dart';

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
  final AccountsService _accountsService;
  UserFormBloc(this._accountsService)
      : super(UserFormStateInitial(1 / 8, 1, 8)) {

    on<UserFormEventSubmit>((event, emit) async {
      emit(
          UserFormStateSubmitting(event.currentStep / 8, event.currentStep, 8));
      try {
        await _accountsService.createAccount(event.formData as FormGroup);
        emit(UserFormStateSuccess(event.currentStep / 8, event.currentStep, 8));
      } catch (error) {
        print(error);
        emit(UserFormStateFailure(
            error.toString(), event.currentStep / 8, event.currentStep, 8));
      }
    });

    on<UserFormEventProceed>((event, emit) async {
      emit(UserFormStateProceed(
          (event.currentStep + 1) / 8, event.currentStep + 1, 8));
    });
    on<UserFormEventBack>((event, emit) async {
      emit(UserFormStateProceed(
          (event.currentStep - 1) / 8, event.currentStep - 1, 8));
    });
  }
}

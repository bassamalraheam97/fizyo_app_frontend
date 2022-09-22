import 'package:bloc/bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';

class UiChangeBloc extends Bloc<UiChangeEvent, UiChangeState> {
  // final AccountsService _accountsService;
  // UserFormBloc(this._accountsService)

  UiChangeBloc()
      : super(const UiChangeStateInitial(Color(0xffF7F9FB), 'patient')) {
    on<UiChangeEventChangeColor>((event, emit) async {
      emit(UiChangeStateChanged(event.newColor, event.widgetName));
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';

class UiChangeBloc extends Bloc<UiChangeEvent, UiChangeState> {
  // final AccountsService _accountsService;
  // UserFormBloc(this._accountsService)

  UiChangeBloc()
      : super(UiChangeStateInitial(Color(0xffF7F9FB), 'patient', null)) {
    Map<String, dynamic> isColoredMapP = {
      'injury': false,
      'soreness': false,
      'chronic pain': false,
      'neck pain': false,
      'soft tissue': false,
      'shoulder pain': false,
      'chip0': false,
      'chip1': false,
    };
    Map<String, dynamic> isColoredMapE = {
      'Pediatrics': false,
      'Sports': false,
      'Womens health': false,
      'Cardiovascular': false,
      'Neurology': false,
      'Geriatrics': false,
      'Orthopedics': false,
    };
    on<UiChangeEventChangeColor>((event, emit) async {
      // if (isColoredMap[event.widgetName] != null) {
      //   isColoredMap[event.widgetName] = !isColoredMap[event.widgetName];
      // }
      emit(UiChangeStateChanged(event.newColor, event.widgetName, null));
    });
    on<UiChangeEventMultiChangeColor>((event, emit) {
      print('${isColoredMapP} 888888888888888888888888888888888');
      if (isColoredMapP[event.widgetName] != null) {
        isColoredMapP[event.widgetName] = !isColoredMapP[event.widgetName];
        emit(UiChangeStateMultiChanged(
            event.newColor, event.widgetName, isColoredMapP));
      } else if (isColoredMapE[event.widgetName] != null) {
        isColoredMapE[event.widgetName] = !isColoredMapE[event.widgetName];
        emit(UiChangeStateMultiChanged(
            event.newColor, event.widgetName, isColoredMapE));
      }
    });
  }
}

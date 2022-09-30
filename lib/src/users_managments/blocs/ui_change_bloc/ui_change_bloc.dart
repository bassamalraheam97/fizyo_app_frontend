import 'package:bloc/bloc.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';

class UiChangeBloc extends Bloc<UiChangeEvent, UiChangeState> {
  // final AccountsService _accountsService;
  // UserFormBloc(this._accountsService)
  Widget image = ImageViewer(
    imageURL: 'assets/images/pic1.png',
    height: 175,
    width: 175,
    radius: 10,
    backColor: Color(0xffF7F9FB),
  );
  UiChangeBloc()
      : super(UiChangeStateInitial(ImageViewer(
          imageURL: 'assets/images/pic1.png',
          height: 175,
          width: 175,
          radius: 10,
          backColor: Color(0xffF7F9FB),
        ))) {
    on<UiChangeEventChangeImage>((event, emit) async {
      if (event.image != null) {
        image = Image.file(
          event.image!,
          height: 175,
          width: 175,
          fit: BoxFit.fill,
        );
      }
      emit(UiChangeStateChanged(image));
    });
  }
}

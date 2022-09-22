import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UiChangeState extends Equatable {
  final Color? newColor;

  const UiChangeState(this.newColor);
}

class UiChangeStateInitial extends UiChangeState {
  const UiChangeStateInitial(super.newColor);

  @override
  List<Object?> get props => [super.newColor];
}

class UiChangeStateChanged extends UiChangeState {
  const UiChangeStateChanged(super.newColor);

  @override
  List<Object?> get props => [super.newColor];
}

class UiChangeStateFailure extends UiChangeState {
  final String errorMassage;
  const UiChangeStateFailure(this.errorMassage, super.newColor);
  @override
  List<Object?> get props => [errorMassage, super.newColor];
}

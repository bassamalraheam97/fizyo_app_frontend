import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UiChangeState extends Equatable {
  final Color? newColor;
  final String widgetName;

  const UiChangeState(this.newColor, this.widgetName);
}

class UiChangeStateInitial extends UiChangeState {
  const UiChangeStateInitial(super.newColor, super.widgetName);

  @override
  List<Object?> get props => [super.newColor];
}

class UiChangeStateChanged extends UiChangeState {
  const UiChangeStateChanged(super.newColor, super.widgetName);

  @override
  List<Object?> get props => [super.newColor, super.widgetName];
}

class UiChangeStateFailure extends UiChangeState {
  final String errorMassage;
  const UiChangeStateFailure(
      this.errorMassage, super.newColor, super.widgetName);
  @override
  List<Object?> get props => [errorMassage, super.newColor, super.widgetName];
}

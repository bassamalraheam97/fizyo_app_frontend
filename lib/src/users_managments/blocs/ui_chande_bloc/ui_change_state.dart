import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UiChangeState extends Equatable {
  final Color? newColor;
  final String widgetName;
  Map<String, dynamic>? isColoredMap;
  UiChangeState(this.newColor, this.widgetName, this.isColoredMap);
}

class UiChangeStateInitial extends UiChangeState {
  UiChangeStateInitial(super.newColor, super.widgetName, super.isColoredMap);

  @override
  List<Object?> get props => [
        super.newColor,
      ];
}

class UiChangeStateChanged extends UiChangeState {
  UiChangeStateChanged(super.newColor, super.widgetName, super.isColoredMap);

  @override
  List<Object?> get props => [
        super.newColor,
        super.widgetName,
      ];
}

class UiChangeStateMultiChanged extends UiChangeState {
  UiChangeStateMultiChanged(
      super.newColor, super.widgetName, super.isColoredMap);

  @override
  List<Object?> get props =>
      [super.newColor, super.widgetName, super.isColoredMap];
}

class UiChangeStateFailure extends UiChangeState {
  final String errorMassage;
  UiChangeStateFailure(
      this.errorMassage, super.newColor, super.widgetName, super.isColoredMap);
  @override
  List<Object?> get props => [
        errorMassage,
        super.newColor,
        super.widgetName,
      ];
}

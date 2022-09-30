import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UiChangeState extends Equatable {
  final Widget? image;
  const UiChangeState(
    this.image,
  );
}

class UiChangeStateInitial extends UiChangeState {
  UiChangeStateInitial(super.image);

  @override
  List<Object?> get props => [
        super.image,
      ];
}

class UiChangeStateChanged extends UiChangeState {
  UiChangeStateChanged(super.image);

  @override
  List<Object?> get props => [super.image];
}

// class UiChangeStateMultiChanged extends UiChangeState {
//   UiChangeStateMultiChanged(
//       super.newColor, super.widgetName, super.isColoredMap);

//   @override
//   List<Object?> get props =>
//       [super.newColor, super.widgetName, super.isColoredMap];
// }

// class UiChangeStateFailure extends UiChangeState {
//   final String errorMassage;
//   UiChangeStateFailure(
//       this.errorMassage, super.newColor, super.widgetName, super.isColoredMap);
//   @override
//   List<Object?> get props => [
//         errorMassage,
//         super.newColor,
//         super.widgetName,
//       ];
// }

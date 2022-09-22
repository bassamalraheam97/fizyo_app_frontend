import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UiChangeEvent extends Equatable {}

class UiChangeEventChangeColor extends UiChangeEvent {
  final Color? newColor;
  final String widgetName;

  UiChangeEventChangeColor(this.newColor, this.widgetName);

  @override
  List<Object?> get props => [newColor, widgetName];
}

class UiChangeEventChangeColor2 extends UiChangeEvent {
  final Color? newColor;
  final String widgetName;

  UiChangeEventChangeColor2(this.newColor, this.widgetName);

  @override
  List<Object?> get props => [newColor, widgetName];
}

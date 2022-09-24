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

class UiChangeEventMultiChangeColor extends UiChangeEvent {
  final Color? newColor;
  final String widgetName;
  // Map<String, dynamic>? isColoredMap;

  UiChangeEventMultiChangeColor(this.newColor, this.widgetName);

  @override
  List<Object?> get props => [newColor, widgetName];
}

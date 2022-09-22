import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UiChangeEvent extends Equatable {}

class UiChangeEventChangeColor extends UiChangeEvent {
  final Color? newColor;

  UiChangeEventChangeColor(this.newColor);

  @override
  List<Object?> get props => [newColor];
}

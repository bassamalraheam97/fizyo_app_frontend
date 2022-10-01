import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class UiChangeEvent extends Equatable {}

class UiChangeEventChangeImage extends UiChangeEvent {
  final File? image;

  UiChangeEventChangeImage(
    this.image,
  );

  @override
  List<Object?> get props => [image];
}

// class UiChangeEventMultiChangeColor extends UiChangeEvent {
//   final Color? newColor;
//   final String widgetName;
//   // Map<String, dynamic>? isColoredMap;

//   UiChangeEventMultiChangeColor(this.newColor, this.widgetName);

//   @override
//   List<Object?> get props => [newColor, widgetName];
// }

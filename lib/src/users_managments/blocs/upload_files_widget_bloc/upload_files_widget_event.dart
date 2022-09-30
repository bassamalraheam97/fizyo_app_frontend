import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

abstract class UploadFilesWidgetEvent extends Equatable {}

class UploadFilesWidgetEventChange extends UploadFilesWidgetEvent {
  final Map<String, dynamic> files;
  final Function deleteFile;
  UploadFilesWidgetEventChange(
    this.files,
    this.deleteFile,
  );

  @override
  List<Object?> get props => [files, deleteFile];
}

// class UploadFilesWidgetEventDelete extends UploadFilesWidgetEvent {
//   final Map<String, dynamic> files;

//   UploadFilesWidgetEventDelete(
//     this.files,
//   );

//   @override
//   List<Object?> get props => [files];
// }

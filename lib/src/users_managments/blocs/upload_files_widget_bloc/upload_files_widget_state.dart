import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UploadFilesWidgetState extends Equatable {
  final List<Widget> listWidget;
  const UploadFilesWidgetState(
    this.listWidget,
  );
}

class UploadFilesWidgetStateInitial extends UploadFilesWidgetState {
  UploadFilesWidgetStateInitial(super.listWidget);

  @override
  List<Object?> get props => [
        super.listWidget,
      ];
}

class UploadFilesWidgetStateChanged extends UploadFilesWidgetState {
  UploadFilesWidgetStateChanged(super.listWidget);

  @override
  List<Object?> get props => [super.listWidget];
}

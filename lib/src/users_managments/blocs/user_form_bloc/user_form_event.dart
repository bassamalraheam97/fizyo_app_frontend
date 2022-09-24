import 'package:equatable/equatable.dart';

abstract class UserFormEvent extends Equatable {}

class UserFormEventSubmit extends UserFormEvent {
  final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventSubmit(this.formData, this.currentStep);
  @override
  List<Object?> get props => [formData, currentStep];
}

class UserFormEventProceed extends UserFormEvent {
  final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventProceed(this.currentStep, this.formData);

  @override
  List<Object?> get props => [currentStep, formData];
}

class UserFormEventBack extends UserFormEvent {
  // final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventBack(this.currentStep);
  @override
  List<Object?> get props => [currentStep];
}

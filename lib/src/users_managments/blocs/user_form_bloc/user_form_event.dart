import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

abstract class UserFormEvent extends Equatable {}

class UserFormEventSubmit extends UserFormEvent {
  final FormGroup formData;
  final int currentStep;
  UserFormEventSubmit(this.formData, this.currentStep);
  @override
  List<Object?> get props => [formData, currentStep];
}

class UserFormEventProceed extends UserFormEvent {
  // final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventProceed(this.currentStep);

  @override
  List<Object?> get props => [
        currentStep,
      ];
}

class UserFormEventVerification extends UserFormEvent {
  // final Map<String, dynamic> formData;
  String recipients;
  final int currentStep;
  UserFormEventVerification(this.currentStep, this.recipients);

  @override
  List<Object?> get props => [
        currentStep,
        recipients,
      ];
}

class UserFormEventBack extends UserFormEvent {
  // final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventBack(this.currentStep);
  @override
  List<Object?> get props => [currentStep];
}

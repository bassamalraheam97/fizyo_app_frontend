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
  // final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventProceed(this.currentStep);

  @override
  List<Object?> get props => [
        currentStep,
      ];
}

class UserFormEventBack extends UserFormEvent {
  // final Map<String, dynamic> formData;
  final int currentStep;
  UserFormEventBack(this.currentStep);
  @override
  List<Object?> get props => [currentStep];
}

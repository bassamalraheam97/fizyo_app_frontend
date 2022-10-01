import 'package:equatable/equatable.dart';

abstract class UserFormState extends Equatable {
  final double value;
  final int currentStep;
  final int totalSteps;

  UserFormState(
    this.value,
    this.currentStep,
    this.totalSteps,
  );
}

class UserFormStateInitial extends UserFormState {
  UserFormStateInitial(
    super.value,
    super.currentStep,
    super.totalSteps,
  );

  @override
  List<Object?> get props => [
        super.value,
        super.currentStep,
        super.totalSteps,
      ];
}

class UserFormStateSubmitting extends UserFormState {
  UserFormStateSubmitting(
    super.value,
    super.currentStep,
    super.totalSteps,
  );

  @override
  List<Object?> get props => [super.value, super.currentStep, super.totalSteps];
}

class UserFormStateProceed extends UserFormState {
  UserFormStateProceed(
    super.value,
    super.currentStep,
    super.totalSteps,
  );

  @override
  List<Object?> get props => [super.value, super.currentStep, super.totalSteps];
}

class UserFormStateSuccess extends UserFormState {
  UserFormStateSuccess(
    super.value,
    super.currentStep,
    super.totalSteps,
  );

  @override
  List<Object?> get props => [super.value, super.currentStep, super.totalSteps];
}

class UserFormStateSended extends UserFormState {
  UserFormStateSended(
    super.value,
    super.currentStep,
    super.totalSteps,
  );

  @override
  List<Object?> get props => [
        super.value,
        super.currentStep,
        super.totalSteps,
      ];
}

class UserFormStateFailure extends UserFormState {
  final String errorMassage;
  UserFormStateFailure(
    this.errorMassage,
    super.value,
    super.currentStep,
    super.totalSteps,
  );
  @override
  List<Object?> get props =>
      [errorMassage, super.value, super.currentStep, super.totalSteps];
}

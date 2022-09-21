import 'package:equatable/equatable.dart';

abstract class ClientFormState extends Equatable {
  final double value;
  final int currentStep;
  final int totalSteps;

  const ClientFormState(this.value, this.currentStep, this.totalSteps);
}

class ClientFormStateInitial extends ClientFormState {
  const ClientFormStateInitial(
      super.value, super.currentStep, super.totalSteps);

  @override
  List<Object?> get props => [super.value, super.currentStep, super.totalSteps];
}

class ClientFormStateSubmitting extends ClientFormState {
  const ClientFormStateSubmitting(
      super.value, super.currentStep, super.totalSteps);

  @override
  List<Object?> get props => [super.value, super.currentStep, super.totalSteps];
}

class ClientFormStateSuccess extends ClientFormState {
  const ClientFormStateSuccess(
      super.value, super.currentStep, super.totalSteps);

  @override
  List<Object?> get props => [super.value, super.currentStep, super.totalSteps];
}

class ClientFormStateFailure extends ClientFormState {
  final String errorMassage;
  const ClientFormStateFailure(
      this.errorMassage, super.value, super.currentStep, super.totalSteps);
  @override
  List<Object?> get props =>
      [errorMassage, super.value, super.currentStep, super.totalSteps];
}

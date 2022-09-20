import 'package:equatable/equatable.dart';

abstract class ClientFormEvent extends Equatable {}

class ClientFormEventSubmit extends ClientFormEvent {
  final Map<String, dynamic> formData;
  final int currentStep;
  ClientFormEventSubmit(this.formData, this.currentStep);
  @override
  List<Object?> get props => [formData, currentStep];
}

import 'package:equatable/equatable.dart';

abstract class EmailVerState extends Equatable {
  final String verificationCode;
  const EmailVerState(this.verificationCode);
}

class EmailVerStateInitial extends EmailVerState {
  const EmailVerStateInitial(super.verificationCode);

  @override
  List<Object?> get props => [super.verificationCode];
}

class EmailVerStateSubmitting extends EmailVerState {
  const EmailVerStateSubmitting(super.verificationCode);

  @override
  List<Object?> get props => [super.verificationCode];
}

class EmailVerStateSended extends EmailVerState {
  const EmailVerStateSended(super.verificationCode);

  @override
  List<Object?> get props => [super.verificationCode];
}

class EmailVerStateFailure extends EmailVerState {
  final String errorMassage;
  const EmailVerStateFailure(
    this.errorMassage,
    super.verificationCode,
  );
  @override
  List<Object?> get props => [
        errorMassage,
        super.verificationCode,
      ];
}

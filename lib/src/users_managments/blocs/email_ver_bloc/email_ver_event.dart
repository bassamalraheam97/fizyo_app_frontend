import 'package:equatable/equatable.dart';

abstract class EmailVerEvent extends Equatable {}

class EmailVerEventVerification extends EmailVerEvent {
  // final Map<String, dynamic> formData;
  final String recipients;
  EmailVerEventVerification(this.recipients);

  @override
  List<Object?> get props => [
        recipients,
      ];
}

class EmailVerEventForgetPassword extends EmailVerEvent {
  // final Map<String, dynamic> formData;
  String recipients;
  EmailVerEventForgetPassword(this.recipients);

  @override
  List<Object?> get props => [
        recipients,
      ];
}

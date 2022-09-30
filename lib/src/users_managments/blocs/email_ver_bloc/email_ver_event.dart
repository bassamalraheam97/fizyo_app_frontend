import 'package:equatable/equatable.dart';

abstract class EmailVerEvent extends Equatable {}

class EmailVerEventSend extends EmailVerEvent {
  final String recipients;
  EmailVerEventSend(this.recipients);
  @override
  List<Object?> get props => [recipients];
}

import 'package:bloc/bloc.dart';
import 'package:email_auth/email_auth.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/email_ver_bloc/email_ver_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/email_ver_bloc/email_ver_state.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/user_repository.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class EmailVerBloc extends Bloc<EmailVerEvent, EmailVerState> {
  final UserRepository _userRepository;
  EmailVerBloc(this._userRepository)
      : super(const EmailVerStateInitial('123456')) {
    on<EmailVerEventVerification>((event, emit) async {
      try {
        var r = await _userRepository.sendCode(email: event.recipients);
        if (r.isNotEmpty) {
          emit(EmailVerStateSended(r.toString()));
        }
      } catch (error) {
        emit(EmailVerStateFailure(error.toString(), '123456'));
      }
    });
  }
}

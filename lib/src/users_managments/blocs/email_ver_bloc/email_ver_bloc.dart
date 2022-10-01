import 'package:bloc/bloc.dart';
import 'package:email_auth/email_auth.dart';
import 'email_ver_event.dart';
import 'email_ver_state.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class EmailVerBloc extends Bloc<EmailVerEvent, EmailVerState> {
  // final AccountsService _accountsService;
  //EmailVerBloc(this._accountsService)
  late EmailAuth emailAuth;
  var options = {
    'baseUrl': 'http://localhost:8000',
    'connectTimeout': '5000',
    'receiveTimeout': '3000',
  };
  EmailVerBloc() : super(const EmailVerStateInitial('')) {
    on<EmailVerEventSend>(((event, emit) async {
      // String Verificationcode = '4444444';
      // final Email email = Email(
      //   body: 'Your Verification Code is: $Verificationcode',
      //   subject: 'Verification Code',
      //   recipients: [event.recipients],
      // );
      // try {
      //   await FlutterEmailSender.send(email);
      //   emit(EmailVerStateSuccess(Verificationcode));
      // } catch (error) {
      //   print(error);
      //   emit(EmailVerStateFailure(error.toString(), ''));
      // }
      emailAuth = EmailAuth(
        sessionName: "Sample session",
      );
      try {
        emailAuth.config(options);
        bool result = await emailAuth.sendOtp(
            recipientMail: event.recipients, otpLength: 5);
        if (result) {
          emit(EmailVerStateSuccess('done'));
        }
      } catch (error) {
        print(error);
        emit(EmailVerStateFailure(error.toString(), ''));
      }

      /// Configuring the remote server
    }));
  }
}

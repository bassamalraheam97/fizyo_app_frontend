import 'package:bloc/bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/client_form_bloc/client_form_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/client_form_bloc/client_form_state.dart';

class ClientFormBloc extends Bloc<ClientFormEvent, ClientFormState> {
  // final AccountsService _accountsService;
  //ClientFormBloc(this._accountsService)
  ClientFormBloc() : super(const ClientFormStateIntial(1 / 8, 1, 8)) {
    on<ClientFormEventSubmit>((event, emit) async {
      emit(ClientFormStateSubmitting(
          event.currentStep / 8, event.currentStep, 8));
      try {
        print(event.formData);
        // final user = User.fromJson(event.formData);
        // await _accountsService.createAccount(user, null);
        emit(ClientFormStateSuccess(
            event.currentStep / 8, event.currentStep, 8));
      } catch (e) {
        print(e);
        emit(ClientFormStateFailure(
            e.toString(), event.currentStep / 8, event.currentStep, 8));
      }
    });
  }
}

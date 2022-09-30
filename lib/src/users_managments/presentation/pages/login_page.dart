import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../blocs/auth_bloc/auth_event.dart';
import '../../blocs/auth_bloc/auth_state.dart';
import '../components/login.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final form = FormGroup({
    'email': FormControl<String>(
        validators: [Validators.email, Validators.required]),
    'password': FormControl<String>(
        validators: [Validators.minLength(8), Validators.required]),
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        BotToast.cleanAll();
        if (state is AuthStateChecking) {
          BotToast.showLoading();
        } else if (state is AuthStateFailure) {
          BotToast.showText(text: state.errorMassage);
        } else if (state is AuthStateAuthenticated) {
          BotToast.showText(text: "success");
        }
      },
      builder: ((context, state) {
        if (state is AuthStateAuthenticated) {
          return Column(
            children: [
              const Text("hello your token is"),
              ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthEventLogout());
                  },
                  child: const Text("Logout"))
            ],
          );
        } else {
          return ReactiveForm(
            formGroup: form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // ProgressBar(value: state.value),
                const SizedBox(
                  height: 13,
                ),
                const Login(),
                ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthEventLogin(
                          form.value["email"] as String,
                          form.value["password"] as String));

                      print(
                          "--------------values of form are ${form.value}-------------");
                    },
                    child: const Text("Login"))
              ],
            ),
          );
        }
      }),
    );
  }
}

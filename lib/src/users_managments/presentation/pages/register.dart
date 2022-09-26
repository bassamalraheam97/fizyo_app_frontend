// ignore_for_file: must_be_immutable

import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';

import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

final form = FormGroup({
  'name': FormControl<String>(value: 'John Doe'),
  'email': FormControl<String>(
      value: '', validators: [Validators.required, Validators.email]),
  'password': FormControl<String>(validators: [Validators.required]),
});

class Register extends StatelessWidget {
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormBloc, UserFormState>(
      builder: (context, state) {
        return ReactiveForm(
          formGroup: form,
          child: Column(
            children: <Widget>[
              ReactiveTextField(
                formControlName: 'name',
                validationMessages: {
                  'required': (error) => 'The name must not be empty'
                },
              ),
              ReactiveTextField(
                formControlName: 'email',
                validationMessages: {
                  'required': (error) => 'The email must not be empty',
                  'email': (error) => 'The email value must be a valid email'
                },
              ),
              ReactiveTextField(
                formControlName: 'password',
                // obscureText: true,
                validationMessages: {
                  'required': (error) => 'The password must not be empty',
                  'minLength': (error) =>
                      'The password must have at least 8 characters'
                },
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  print(form.value);
                },
              )
            ],
          ),
        );
      },
      // ),
    );
    // }),
    // );
  }
}

import 'package:flutter/material.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep2 extends StatelessWidget {
  const RegisterStep2({super.key, required this.form});
  final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          FormTextField(
            formControlName: "verificationCode",
            labelText: "Verification Code",
          ),
          SizedBox(
            height: 13,
          ),
          FormTextField(
            formControlName: "password",
            labelText: "Password",
          ),
          SizedBox(
            height: 13,
          ),
          FormTextField(
            formControlName: "passwordConformation",
            labelText: "Password Conformation",
          ),
        ],
      ),
    );
  }
}

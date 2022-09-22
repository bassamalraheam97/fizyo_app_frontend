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
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const FormTextField(
            formControlName: "verificationCode",
            labelText: "Verification Code",
          ),
          const SizedBox(
            height: 13,
          ),
          Text.rich(
            TextSpan(
              text: 'Resend the OTP in ',
              children: [
                TextSpan(
                  text: '5s',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xffEE9CDA),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          const FormTextField(
            formControlName: "password",
            labelText: "Password",
          ),
          const SizedBox(
            height: 13,
          ),
          const FormTextField(
            formControlName: "passwordConformation",
            labelText: "Password Conformation",
          ),
        ],
      ),
    );
  }
}

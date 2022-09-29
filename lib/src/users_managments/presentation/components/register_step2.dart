import 'package:flutter/material.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep2 extends StatelessWidget {
  const RegisterStep2({
    super.key,
  });
  // final String phone;
  // FormGroup getForm() {
  //   return form;
  // }
  // FormGroup form() {
  //   return FormGroup({
  //     'verificationCode': FormControl<String>(
  //       validators: [Validators.minLength(2), Validators.required],
  //     ),
  //     'password': FormControl<String>(
  //       validators: [
  //         Validators.minLength(6),
  //         Validators.required,
  //       ],
  //     ),
  //     'passwordConformation': FormControl<String>(
  //       validators: [
  //         Validators.minLength(6),
  //         Validators.required,
  //       ],
  //     )
  //   }, validators: [
  //     Validators.mustMatch('password', 'passwordConformation'),
  //   ]);
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
    // });
  }
}

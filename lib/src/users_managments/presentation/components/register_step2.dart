import 'package:dio/dio.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/http_user_repository.dart';
import 'package:flutter/material.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep2 extends StatelessWidget {
  final FormGroup form;
  final Dio dio;
  RegisterStep2({
    super.key,
    required this.dio,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    HttpUserRepository _userRepository = HttpUserRepository(dio);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FormTextField(
          formControlName: "verificationCode",
          labelText: "Verification Code",
          onChanged: (p0) {
            print(form.control('verificationCode').value);
            // if (form.control('tempVerificationCode').value ==
            //     form.control('verificationCode').value) {
            //   form.control('tempVerificationCode').updateValue('valid');
            // }
            print(form.control('tempVerificationCode').value);
          },
        ),
        const SizedBox(
          height: 13,
        ),
        GestureDetector(
          onTap: (() async {
            String email = form.control('email').value;
            String r = await _userRepository.sendCode(email: email);
            form.control('tempVerificationCode').updateValue(r.toString());
          }),
          child: Text.rich(
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

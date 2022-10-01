import 'package:dio/dio.dart';
import '../../data/http_user_repository.dart';
import 'package:flutter/material.dart';
import '../../../presentation/widgets/form_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep2 extends StatelessWidget {
  final FormGroup form;
  final Dio dio;
  RegisterStep2({
    super.key,
    required this.dio,
    required this.form,
  });

  String temp = '123';
  Future<void> sendCode(String email) async {
    HttpUserRepository _userRepository = HttpUserRepository(dio);
    var r = await _userRepository
        .sendCode(email: email)
        .then((value) => temp = value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FormTextField(
          formControlName: "verificationCode",
          labelText: "Verification Code",
          onChanged: (p0) {
            print(form.control('tempVerificationCode').value);
            if (form.control('tempVerificationCode').value ==
                form.control('verificationCode').value) {
              form.control('tempVerificationCode').updateValue('valid');
            }
          },
        ),
        const SizedBox(
          height: 13,
        ),
        GestureDetector(
          onTap: (() {
            print('sent');
            sendCode(form.control("email").value.toString()).toString();
            form.control('tempVerificationCode').updateValue(temp.toString());
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

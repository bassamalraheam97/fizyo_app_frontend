// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/stepper.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_state.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/progress_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/http_user_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/user_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step1.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step2.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step3.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step4.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step5.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step6.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step7e.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step7p.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step8.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:email_auth/email_auth.dart';

class RegisterPage extends StatelessWidget {
  final Dio dio;
  RegisterPage({super.key, required this.dio});

  String phone = '';
  bool next = false;
  bool send = false;
  FormGroup form(int currentStep) {
    switch (currentStep) {
      case 1:
        return FormGroup({
          'firstName': FormControl<String>(
            validators: [Validators.minLength(3), Validators.required],
          ),
          'lastName': FormControl<String>(
            validators: [Validators.minLength(3), Validators.required],
          ),
          'phoneNumber': FormControl<String>(
            validators: [
              Validators.pattern(RegExp(
                  r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)'))
            ],
          ),
          'email': FormControl<String>(
            validators: [Validators.email, Validators.required],
          ),
          'tempVerificationCode': FormControl<String>(),
          'verificationCode': FormControl<String>(
            validators: [Validators.minLength(2), Validators.required],
          ),
          'password': FormControl<String>(
            validators: [
              Validators.minLength(6),
              Validators.required,
            ],
          ),
          'passwordConformation': FormControl<String>(
            validators: [
              Validators.minLength(6),
              Validators.required,
            ],
          ),
          'accountType': FormControl<String>(
            value: 'PT',
          ),
          'gender': FormControl<String>(
            value: 'male',
          ),
          'selectedImage': FormControl<String>(),
          'profilePicture': FormControl<File>(),
          'preferredServiceType': FormControl<List<String>>(
            value: [],
            validators: [Validators.minLength(2)],
          ),
          'diseasesOrSpecialties': FormControl<List<String>>(
            value: [],
            validators: [Validators.minLength(2)],
          ),
          'input': FormControl<RangeValues>(),
          'min': FormControl<String>(
            value: '0',
            // validators: [Validators.email, Validators.required],
          ),
          'max': FormControl<String>(
            value: '1000',
            // validators: [Validators.email, Validators.required],
          ),
          'bio': FormControl<String>(),
          "tempName": FormControl<String>(
              // validators: [Validators.required, Validators.minLength(2)],
              ),
          // "attachmentName": FormControl<List<Map<String, dynamic>>>(),
          "attachmentName": FormGroup({}),
          // 'files': FormControl<List<File>>(),
        }, validators: [
          Validators.mustMatch('password', 'passwordConformation'),
          Validators.mustMatch('tempVerificationCode', 'verificationCode'),
        ]);
      default:
        return FormGroup({});
    }
  }

  Widget getStep(int currentStep, FormGroup form) {
    switch (currentStep) {
      case 1:
        {
          return RegisterStep1();
        }
      case 2:
        {
          return RegisterStep2(
            dio: dio,
            form: form,
          );
        }
      case 3:
        return RegisterStep3(
          form: form,
        );
      case 4:
        return RegisterStep4(
          form: form,
        );
      case 5:
        return RegisterStep5(
          form: form,
        );
      case 6:
        return RegisterStep6(
          form: form,
        );
      case 7:
        if (form.control('accountType').value == 'PT') {
          return RegisterStep7p(
            form: form,
          );
        } else {
          return RegisterStep7e(
            form: form,
          );
        }
      case 8:
        return RegisterStep8(
          form: form,
        );
      default:
        return Container();
    }
  }

  // String temp = '123';
  // var r;
  // Future<void> sendCode(String email) async {
  //   r = await _userRepository
  //       .sendCode(email: email)
  //       .then((value) => temp = value);
  // }

  @override
  Widget build(BuildContext context) {
    HttpUserRepository _userRepository = HttpUserRepository(dio);

    return BlocBuilder<UserFormBloc, UserFormState>(
      //   listener: (context, state) {
      // BotToast.cleanAll();
      // if (state is UserFormStateSubmitting) {
      //   BotToast.showLoading();
      // } else if (state is UserFormStateFailure) {
      //   BotToast.showText(text: state.errorMassage);
      // } else if (state is UserFormStateSuccess) {
      //   BotToast.showText(text: "success");
      // }
      // },
      builder: (uContext, uState) {
        return
            // BlocBuilder<EmailVerBloc, EmailVerState>(
            //   builder: (eContext, eState) {
            //     return
            Scaffold(
          appBar: AppBar(
            title: Text("Fyzio App"),
            leading: uState.currentStep > 1
                ? IconButton(
                    onPressed: () {
                      context
                          .read<UserFormBloc>()
                          .add(UserFormEventBack(uState.currentStep));
                    },
                    icon: Icon(Icons.arrow_back_ios_new))
                : Container(),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ReactiveFormBuilder(
                  form: (() => form(uState.currentStep)),
                  builder: (context, form, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProgressBar(value: uState.value),
                        const SizedBox(height: 13),
                        StepperWidget(
                          startVal: uState.currentStep,
                          endVal: 8,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        TitleDescription(
                          currentStep: uState.currentStep,
                          accountType: form.control('accountType').value,
                          phone: phone,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        getStep(uState.currentStep, form),

                        // ),
                        // ),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).colorScheme.primary,
                              padding: const EdgeInsets.symmetric(vertical: 13),
                            ),
                            onPressed: () async {
                              if (uState.currentStep == (1)) {
                                if (form.control('firstName').valid &&
                                    form.control('lastName').valid &&
                                    form.control('phoneNumber').valid &&
                                    form.control('email').valid) {
                                  next = true;
                                  String email = form.control('email').value;
                                  String r = await _userRepository.sendCode(
                                      email: email);
                                  form
                                      .control('tempVerificationCode')
                                      .updateValue(r.toString());
                                }
                              } else if (uState.currentStep == (2)) {
                                if (form
                                        .control('tempVerificationCode')
                                        .valid &&
                                    form.control('password').valid &&
                                    form
                                        .control('passwordConformation')
                                        .valid) {
                                  next = true;
                                }
                              } else if (uState.currentStep == (5)) {
                                if (form.control('selectedImage').valid ||
                                    form.control('profilePicture').valid) {
                                  next = true;
                                }
                              } else if (uState.currentStep == (6)) {
                                if (form
                                    .control('preferredServiceType')
                                    .valid) {
                                  next = true;
                                }
                              } else if (uState.currentStep == (7)) {
                                if (form
                                    .control('diseasesOrSpecialties')
                                    .valid) {
                                  next = true;
                                }
                              } else if (uState.currentStep == (8)) {
                                uContext.read<UserFormBloc>().add(
                                    UserFormEventSubmit(
                                        form, uState.currentStep));
                              } else {
                                next = true;
                              }
                              // form
                              //     .control('tempVerificationCode')
                              //     .updateValue(eState.verificationCode);
                              // print(eState.verificationCode);
                              if (next) {
                                context.read<UserFormBloc>().add(
                                    UserFormEventProceed(uState.currentStep));
                                next = false;
                                // if (send) {
                                //   eContext.read<EmailVerBloc>().add(
                                //       EmailVerEventVerification(
                                //           form.control("email").value));
                                //   print(eState.verificationCode);
                                //   send = false;
                                // }
                              }
                            },
                            child: Text(
                              "Proceed",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: Color(0xffF7F9FB), fontSize: 16),
                            ),
                          ),
                        ),
                        uState.currentStep == 1
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have account?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => LoginPage(
                                                    showBack: true,
                                                    context: context,
                                                    dio: dio,
                                                  )));
                                    },
                                    child: Text(
                                      ' Login',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    );
                  }),
            ),
          ),
        );
      },
    );
    // }
    // );
  }
}

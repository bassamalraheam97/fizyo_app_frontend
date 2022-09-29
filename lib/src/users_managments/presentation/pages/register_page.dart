// ignore_for_file: must_be_immutable

import 'package:fizyo_app_frontend/src/presentation/widgets/stepper.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/email_ver_bloc/email_ver_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/email_ver_bloc/email_ver_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/email_ver_bloc/email_ver_state.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/progress_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step1.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step2.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step3.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step4.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step5.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step6.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step7e.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step7p.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step8.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../components/new_register_step4.dart';
import 'package:email_auth/email_auth.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  Map<String, dynamic> data = {};
  Map<String, dynamic> stepsData = {
    'accountType': 'PT',
    'gender': 'male',
    'imageURL': '',
    'preferredServiceType': '',
    'diseases': {},
    'specialties': {},
  };
  UiChangeState? uiState;
  String phone = '';
  bool next = false;
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
              // validators: [Validators.email, Validators.required],
              ),
          'max': FormControl<String>(
              // validators: [Validators.email, Validators.required],
              ),
          'bio': FormControl<String>(),
          "certificate": FormControl<String>(),
          "attachmentName": FormGroup({
            'url': FormControl<String>(),
            'name': FormControl<String>(),
            'type': FormControl<String>(),
          }),
        }, validators: [
          Validators.mustMatch('password', 'passwordConformation'),
        ]);
      default:
        return FormGroup({});
    }
  }

  Widget getStep(int currentStep, FormGroup form) {
    // currentStep = 7;
    switch (currentStep) {
      case 1:
        {
          return RegisterStep1();
        }
      case 2:
        {
          print('-------------------------------------------');
          return const RegisterStep2();
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
        return RegisterStep5();
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
          // onChanged: ((_pickedFile) {}),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    //==============================================================================
    return BlocBuilder<UserFormBloc, UserFormState>(builder: (context, state) {
      return BlocBuilder<EmailVerBloc, EmailVerState>(
        builder: (Econtext, Estate) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Fyzio App"),
              leading: state.currentStep > 1
                  ? IconButton(
                      onPressed: () {
                        print('$data+++++++++++++++++++++++++++++++++++++++++');
                        context
                            .read<UserFormBloc>()
                            .add(UserFormEventBack(state.currentStep));
                      },
                      icon: Icon(Icons.arrow_back_ios_new))
                  : Container(),
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ReactiveFormBuilder(
                    form: (() => form(state.currentStep)),
                    builder: (context, form, child) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProgressBar(value: state.value),
                          const SizedBox(height: 13),
                          StepperWidget(
                            startVal: state.currentStep,
                            endVal: 8,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          TitleDescription(
                            currentStep: state.currentStep,
                            accountType: form.control('accountType').value,
                            phone: phone,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          getStep(state.currentStep, form),

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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 13),
                              ),
                              onPressed: () {
                                if (state.currentStep == (1)) {
                                  next = true;
                                  data.addAll(form.value);
                                  phone = form
                                      .control('phoneNumber')
                                      .value
                                      .toString();
                                  Econtext.read<EmailVerBloc>()
                                      .add(EmailVerEventSend('552055'));
                                  print(Estate.verificationCode);
                                } else if (state.currentStep == (2)) {
                                  next = true;
                                  // data.addAll(form.value);
                                  // print(
                                  //     '${data} -------------------------------------');
                                } else if (state.currentStep == (3)) {
                                  next = true;

                                  data.addAll(form.value);
                                  print(
                                      '${data} -------------------------------------');
                                } else if (state.currentStep == (4)) {
                                  next = true;

                                  data.addAll(form.value);
                                  print(
                                      '${data} -------------------------------------');
                                } else if (state.currentStep == (5)) {
                                  next = true;

                                  data.addAll(form.value);
                                  print(
                                      '${data} -------------------------------------');
                                } else if (state.currentStep == (6)) {
                                  next = true;

                                  data.addAll(form.value);
                                  print(
                                      '${data} -------------------------------------');
                                } else if (state.currentStep == (7)) {
                                  next = true;

                                  data.addAll(form.value);
                                  print(
                                      '${data} -------------------------------------');
                                }
                                if (next) {
                                  context.read<UserFormBloc>().add(
                                      UserFormEventProceed(state.currentStep));
                                  next = false;
                                }
                              },
                              child: Text(
                                "Procced",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Color(0xffF7F9FB), fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          );
        },
      );
    });
  }
}

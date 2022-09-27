// ignore_for_file: must_be_immutable

import 'package:bot_toast/bot_toast.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/stepper.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/progress_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/new_register_step5.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/new_register_step6.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/new_register_step7e.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step1.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step2.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step3.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step4.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step5.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step6.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step7e.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step7p.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step8.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../components/new_register_step3.dart';
import '../components/new_register_step4.dart';
import '../components/new_register_step7p.dart';

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
          'input': FormControl<RangeValues>(),
          'min': FormControl<String>(
              // validators: [Validators.email, Validators.required],
              ),
          'max': FormControl<String>(
              // validators: [Validators.email, Validators.required],
              ),
          'bio': FormControl<String>(),
          "certificate": FormControl<String>(),
          "attachmentName": FormControl(),
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

        return BlocBuilder<UiChangeBloc, UiChangeState>(
            builder: (context, uiState) {
          uiState = uiState;
          // if (uiState.widgetName == 'patient') {
          //   stepsData['accountType'] = 'PT';
          // } else if (uiState.widgetName == 'physio') {
          //   stepsData['accountType'] = 'EM';
          // }
          return RegisterStep8(
            form: form,
            onChanged: (_file) {},
          );
        });
      // case 4:
      //   return BlocBuilder<UiChangeBloc, UiChangeState>(
      //       builder: (context, uiState) {
      //     uiState = uiState;
      //     if (uiState.widgetName == 'male') {
      //       stepsData['gender'] = 'male';
      //     } else {
      //       stepsData['gender'] = 'female';
      //     }
      //     print('$stepsData ****************************************');
      //     return RegisterStep4(uiState: uiState);
      //   });
      // case 5:
      //   return BlocBuilder<UiChangeBloc, UiChangeState>(
      //       builder: (context, uiState) {
      //     uiState = uiState;
      //     if (uiState.widgetName.startsWith('pic')) {
      //       stepsData['imageURL'] = 'assets/images/${uiState.widgetName}';
      //     }
      //     print('$stepsData ****************************************');
      //     return RegisterStep5(uiState: uiState);
      //   });
      // case 6:
      //   return BlocBuilder<UiChangeBloc, UiChangeState>(
      //       builder: (context, uiState) {
      //     uiState = uiState;
      //     if (uiState.widgetName == 'home' ||
      //         uiState.widgetName == 'online' ||
      //         uiState.widgetName == 'office') {
      //       stepsData['preferredServiceType'] = uiState.widgetName;
      //     }
      //     print('$stepsData ****************************************');
      //     return RegisterStep6(uiState: uiState);
      //   });
      // case 7:
      //   {
      //     return BlocBuilder<UiChangeBloc, UiChangeState>(
      //         builder: (context, uiState) {
      //       uiState = uiState;

      //       if (stepsData['accountType'] == 'PT') {
      //         // print(
      //         //     '${uiState.isColoredMap} ****************************************');
      //         if (uiState.isColoredMap != null) {
      //           stepsData['diseases'].containsKey(uiState.isColoredMap?.keys)
      //               ? stepsData['diseases']
      //                   .updateAll(((key, value) => uiState.isColoredMap?[key]))
      //               : stepsData['diseases'].addAll(uiState.isColoredMap);
      //         }

      //         print('$stepsData ****************************************');
      //         return RegisterStep7p(uiState: uiState);
      //       } else {
      //         if (uiState.isColoredMap != null) {
      //           stepsData['specialties'].containsKey(uiState.isColoredMap?.keys)
      //               ? stepsData['specialties']
      //                   .updateAll(((key, value) => uiState.isColoredMap?[key]))
      //               : stepsData['specialties'].addAll(uiState.isColoredMap);
      //         }

      //         print('$stepsData ****************************************');
      //         return RegisterStep7e(uiState: uiState);
      //       }
      //     });
      //   }
      // case 8:
      //   return BlocBuilder<UiChangeBloc, UiChangeState>(
      //       builder: (context, uiState) {
      //     uiState = uiState;
      //     // if (uiState.widgetName == 'male') {
      //     //   stepsData['gender'] = 'male';
      //     // } else {
      //     //   stepsData['gender'] = 'female';
      //     // }
      //     // print('$stepsData ****************************************');
      //     form = FormGroup({
      //       'input': FormControl<RangeValues>(value: RangeValues(0, 1000)),
      //       'min': FormControl<String>(),
      //       'max': FormControl<String>(),
      //     });
      //     return ReactiveForm(
      //         formGroup: form,
      //         child: RegisterStep8(uiState: uiState, form: form));
      //   });
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    //==============================================================================
    return BlocBuilder<UserFormBloc, UserFormState>(
      builder: (context, state) {
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
                          accountType: stepsData['accountType'],
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
                              padding: const EdgeInsets.symmetric(vertical: 13),
                            ),
                            onPressed: () {
                              if (state.currentStep == (1)) {
                                data.addAll(form.value);
                                phone = form
                                    .control('phoneNumber')
                                    .value
                                    .toString();
                                print(
                                    '${data} -------------------------------------');
                              } else if (state.currentStep == (3)) {
                                data.addAll(form.value);
                                print(
                                    '${data} -------------------------------------');
                              }
                              // else if (state.currentStep == 4) {
                              //   data.addAll(stepsData);
                              // } else if (state.currentStep == 8) {
                              //   data.addAll(stepsData);
                              // }
                              context
                                  .read<UserFormBloc>()
                                  .add(UserFormEventProceed(state.currentStep));
                              // data = state.formData;
                              // Future.delayed(Duration(milliseconds: 100), () {
                              //   formElements(state.currentStep + 1);
                              // });

                              // print(
                              // '${data}---------------------------------------------');
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (_) => RegisterPage2(
                              //           currentStep: (state.currentStep + 1),
                              //           state: state,
                              //         )));
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
                          // }),
                        ),
                      ],
                      // );
                      // }
                    );
                  }),
            ),
          ),
        );
      },
    );
  }
}

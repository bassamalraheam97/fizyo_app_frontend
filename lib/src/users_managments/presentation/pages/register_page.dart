// ignore_for_file: must_be_immutable

import 'package:bot_toast/bot_toast.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/stepper.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  Map<String, dynamic> data = {};
  Map<String, dynamic> stepsData = {
    'patient': 1,
    'physio': 0,
    'gender': 'male',
    'imageURL': '',
  };
  UiChangeState? uiState;
  late FormGroup form = FormGroup({
    'firstName': FormControl<String>(
        // validators: [Validators.minLength(2), Validators.required],
        ),
    'lastName': FormControl<String>(
        // validators: [Validators.minLength(2), Validators.required],
        ),
    'phoneNumber': FormControl<String>(),
    'email': FormControl<String>(
        // validators: [Validators.email],
        ),
  });
  Widget getStep(int currentStep) {
    // currentStep = 2;
    switch (currentStep) {
      case 1:
        {
          form = FormGroup({
            'firstName': FormControl<String>(
                // validators: [Validators.minLength(2), Validators.required],
                ),
            'lastName': FormControl<String>(
                // validators: [Validators.minLength(2), Validators.required],
                ),
            'phoneNumber': FormControl<String>(),
            'email': FormControl<String>(
                // validators: [Validators.email],
                ),
          });
          // data = form as Map<String, dynamic>;
          return RegisterStep1(form: form);
        }
      case 2:
        {
          form = FormGroup({
            'verificationCode': FormControl<String>(
                // validators: [Validators.minLength(2), Validators.required],
                ),
            'password': FormControl<String>(
                // validators: [Validators.minLength(2), Validators.required],
                ),
            'passwordConformation': FormControl<String>(),
          });
          return RegisterStep2(form: form);
        }
      case 3:
        return BlocBuilder<UiChangeBloc, UiChangeState>(
            builder: (context, uiState) {
          uiState = uiState;
          if (uiState.widgetName == 'patient') {
            stepsData['patient'] = 1;
            stepsData['physio'] = 0;
          } else {
            stepsData['patient'] = 0;
            stepsData['physio'] = 1;
          }
          // print('$step3Data ****************************************');
          return RegisterStep3(uiState: uiState);
        });
      case 4:
        return BlocBuilder<UiChangeBloc, UiChangeState>(
            builder: (context, uiState) {
          uiState = uiState;
          if (uiState.widgetName == 'male') {
            stepsData['gender'] = 'male';
          } else {
            stepsData['gender'] = 'female';
          }
          // print('$stepsData ****************************************');
          return RegisterStep4(uiState: uiState);
        });
      case 5:
        return BlocBuilder<UiChangeBloc, UiChangeState>(
            builder: (context, uiState) {
          uiState = uiState;
          if (uiState.widgetName.startsWith('pic')) {
            stepsData['imageURL'] = 'assets/images/${uiState.widgetName}';
          }
          print('$stepsData ****************************************');
          return RegisterStep5(uiState: uiState);
        });
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> data;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: BlocBuilder<UserFormBloc, UserFormState>(
        builder: (context, state) {
          return SingleChildScrollView(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
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
              TitleDescription(currentStep: state.currentStep),
              const SizedBox(
                height: 13,
              ),
              getStep(state.currentStep),
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
                    if (state.currentStep == (1 | 2 | 8)) {
                      data.addAll(form.value);
                    } else if (state.currentStep == 4) {
                      data.addAll(stepsData);
                    }
                    context
                        .read<UserFormBloc>()
                        .add(UserFormEventProceed(state.currentStep));
                    // data = state.formData;
                    // Future.delayed(Duration(milliseconds: 100), () {
                    //   formElements(state.currentStep + 1);
                    // });

                    print(
                        '${data}---------------------------------------------');
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
                        .copyWith(color: Color(0xffF7F9FB), fontSize: 16),
                  ),
                ),
              ),
            ],
          ));
        },
        // ),
      ),
    );
    // }),
    // );
  }
}

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
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step6.dart';
<<<<<<< HEAD
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/login_page.dart';
=======
>>>>>>> 2a1ee7a71a34da2b4edf00e8af769dbb09f07ea0
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  Map<String, dynamic> data = {};
  Map<String, dynamic> stepsData = {
    'accountType': 'PT',
    'gender': 'male',
    'imageURL': '',
    'preferredServiceType': '',
  };
  UiChangeState? uiState;
  late FormGroup formGroup;
  Widget getStep(int currentStep) {
    // currentStep = 2;
    switch (currentStep) {
      case 1:
        {
          formGroup = FormGroup({
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
          return RegisterStep1(form: formGroup);
        }
      case 2:
        {
          formGroup = FormGroup({
            'verificationCode': FormControl<String>(
                // validators: [Validators.minLength(2), Validators.required],
                ),
            'password': FormControl<String>(
                // validators: [Validators.minLength(2), Validators.required],
                ),
            'passwordConformation': FormControl<String>(),
          });
          return RegisterStep2(form: formGroup);
        }
      case 3:
        return BlocBuilder<UiChangeBloc, UiChangeState>(
            builder: (context, uiState) {
          uiState = uiState;
          if (uiState.widgetName == 'patient') {
            stepsData['accountType'] = 'PT';
          } else if (uiState.widgetName == 'physio') {
            stepsData['accountType'] = 'EM';
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
          // print('$stepsData ****************************************');
          return RegisterStep5(uiState: uiState);
        });
      case 6:
        return BlocBuilder<UiChangeBloc, UiChangeState>(
            builder: (context, uiState) {
          uiState = uiState;
          if (uiState.widgetName == 'home' ||
              uiState.widgetName == 'online' ||
              uiState.widgetName == 'office') {
            stepsData['preferredServiceType'] = uiState.widgetName;
          }
          print('$stepsData ****************************************');
          return RegisterStep6(uiState: uiState);
        });
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> data;
    return BlocBuilder<UserFormBloc, UserFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Fyzio App"),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Column(
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
                    print(
                        '$data ---------------------------------------------');
                    print('${formGroup.value} **************************');

                    if (state.currentStep == (1 | 2 | 8)) {
<<<<<<< HEAD
                      data.addAll(formGroup.value);
=======
                      data.addAll(form.value);
>>>>>>> 2a1ee7a71a34da2b4edf00e8af769dbb09f07ea0
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

                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: ( ) => RegisterPage2(
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
              const SizedBox(
                height: 13,
              ),
              TextButton(
                onPressed:( () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){ return LoginPage();}
    ));
    }),
                child: Text("Already Have Account Login"),
              )
            ],
          )),
        );
      },
      // ),
    );
    // }),
    // );
  }
}

// // ignore_for_file: must_be_immutable

// import 'package:bot_toast/bot_toast.dart';
// import 'package:fizyo_app_frontend/src/presentation/widgets/stepper.dart';
// import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_state.dart';
// import 'package:fizyo_app_frontend/src/presentation/widgets/progress_bar.dart';
// import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step1.dart';
// import 'package:fizyo_app_frontend/src/users_managments/presentation/components/register_step2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:reactive_forms/reactive_forms.dart';

// class RegisterPage2 extends StatelessWidget {
//   RegisterPage2({super.key, required this.currentStep, required this.state});
//   final int currentStep;
//   final UserFormState state;
//   FormGroup form = FormGroup({
//     'verificationCode': FormControl<String>(
//         // validators: [Validators.minLength(2), Validators.required],
//         ),
//     'password': FormControl<String>(
//         // validators: [Validators.minLength(2), Validators.required],
//         ),
//     'passwordConformation': FormControl<String>(),
//   });
//   Widget getStep(int currentStep) {
//     print('$currentStep +++++++++++++++++++++++++++++++++++++++++++++');
//     switch (currentStep) {
//       case 1:
//         {
//           form = FormGroup({
//             'firstName': FormControl<String>(
//                 // validators: [Validators.minLength(2), Validators.required],
//                 ),
//             'lastName': FormControl<String>(
//                 // validators: [Validators.minLength(2), Validators.required],
//                 ),
//             'phoneNumber': FormControl<String>(),
//             'email': FormControl<String>(
//                 // validators: [Validators.email],
//                 ),
//           });
//           return Container();
//         }
//       // case 2:
//       //   {
//       //     form = FormGroup({
//       //       'verificationCode': FormControl<String>(
//       //           // validators: [Validators.minLength(2), Validators.required],
//       //           ),
//       //       'password': FormControl<String>(
//       //           // validators: [Validators.minLength(2), Validators.required],
//       //           ),
//       //       'passwordConformation': FormControl<String>(),
//       //     });
//       //     return  RegisterStep2();
//       //   }
//       default:
//         return Container();
//     }
//   }

//   void formElements(int currentStep) {
//     switch (currentStep) {
//       case 1:
//         {
//           form = FormGroup({
//             'firstName': FormControl<String>(
//                 // validators: [Validators.minLength(2), Validators.required],
//                 ),
//             'lastName': FormControl<String>(
//                 // validators: [Validators.minLength(2), Validators.required],
//                 ),
//             'phoneNumber': FormControl<String>(),
//             'email': FormControl<String>(
//                 // validators: [Validators.email],
//                 ),
//           });
//         }
//         break;
//       case 2:
//         {
//           form = FormGroup({
//             'verificationCode': FormControl<String>(
//                 // validators: [Validators.minLength(2), Validators.required],
//                 ),
//             'password': FormControl<String>(
//                 // validators: [Validators.minLength(2), Validators.required],
//                 ),
//             'passwordConformation': FormControl<String>(),
//           });
//         }
//         break;
//       default:
//         break;
//     }
//   }

//   // final form = FormGroup({
//   //   'firstName': FormControl<String>(
//   //       validators: [Validators.minLength(2), Validators.required]),
//   //   'lastName': FormControl<String>(
//   //       validators: [Validators.minLength(2), Validators.required]),
//   //   'phoneNumber': FormControl<String>(),
//   //   'email': FormControl<String>(validators: [Validators.email]),
//   // });
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: ReactiveForm(
//         formGroup: form,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             ProgressBar(value: state.value),
//             SizedBox(height: 13, child: Text('${state.currentStep}')),
//             StepperWidget(
//               startVal: state.currentStep,
//               endVal: 8,
//             ),
//             const SizedBox(
//               height: 13,
//             ),
//             const TitleDescription(
//                 title: 'Registration',
//                 description:
//                     'Please enter your information, then we will send OTP to verify'),
//             const SizedBox(
//               height: 13,
//             ),
//             getStep(state.currentStep),
//             const SizedBox(
//               height: 13,
//             ),
//             Container(
//               height: 50,
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Theme.of(context).colorScheme.primary,
//                   padding: const EdgeInsets.symmetric(vertical: 13),
//                 ),
//                 onPressed: () {
//                   context
//                       .read<UserFormBloc>()
//                       .add(UserFormEventSubmit(form.value, state.currentStep));
//                 },
//                 child: Text(
//                   "Procced",
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleMedium!
//                       .copyWith(color: Color(0xffF7F9FB), fontSize: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // }),
//       ),
//     );
//     // }),
//     // );
//   }
// }

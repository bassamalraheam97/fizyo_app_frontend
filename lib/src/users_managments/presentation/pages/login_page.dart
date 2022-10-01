import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../blocs/auth_bloc/auth_event.dart';
import '../../blocs/auth_bloc/auth_state.dart';
import '../../data/http_user_repository.dart';
import '../../data/user_repository.dart';
import '../components/login.dart';

class LoginPage extends StatelessWidget {
  bool? showBack = false;
  late UserRepository _userRepository;
  final BuildContext context;
  LoginPage({super.key, this.showBack, required this.context});
  final form = FormGroup({
    'email': FormControl<String>(
        validators: [Validators.email, Validators.required]),
    'password': FormControl<String>(
        validators: [Validators.minLength(8), Validators.required]),
  });

  @override
  Widget build(BuildContext context) {
    var options = BaseOptions(
      baseUrl: 'http://192.168.0.19:8000',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = Dio(options);

    _userRepository = HttpUserRepository(dio);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (BuildContext context) =>
              AuthBloc(_userRepository)..add(AuthEventCheckCurrentState()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: showBack == true
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new))
              : Container(),
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          // listener: (context, state) {
          //   BotToast.cleanAll();
          //   if (state is AuthStateChecking) {
          //     BotToast.showLoading();
          //   } else if (state is AuthStateFailure) {
          //     BotToast.showText(text: state.errorMassage);
          //   } else if (state is AuthStateAuthenticated) {
          //     BotToast.showText(text: "success");
          //   }
          // },
          builder: ((context, state) {
            if (state is AuthStateAuthenticated) {
              return Center(
                child: Column(
                  children: [
                    const Text("hello your token is"),
                    ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(AuthEventLogout());
                        },
                        child: const Text("Logout"))
                  ],
                ),
              );
            } else {
              return ReactiveForm(
                formGroup: form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ProgressBar(value: state.value),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Please enter your email or phone number and password,"
                      "you can reset your password,"
                      "we will send you reset instruction to your email",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),

                    const Login(),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary,
                          padding: const EdgeInsets.symmetric(vertical: 13),
                        ),
                        onPressed: () {
                          context.read<AuthBloc>().add(AuthEventLogin(
                              form.value["email"] as String,
                              form.value["password"] as String));

                          print(
                              "--------------values of form are ${form.value}-------------");
                        },
                        child: Text(
                          "Login",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Color(0xffF7F9FB), fontSize: 16),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot your password? ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.outline,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => LoginPage(
                            //               showBack: true,
                            //             )));
                          },
                          child: Text(
                            ' Reset',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          }),
        ),
      ),
    );
//===============================//
    // return Scaffold(
    //   appBar: AppBar(
    //     leading: showBack == true
    //         ? IconButton(
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //             icon: Icon(Icons.arrow_back_ios_new))
    //         : Container(),
    //   ),
    //   body: BlocConsumer<AuthBloc, AuthState>(
    //     listener: (context, state) {
    //       BotToast.cleanAll();
    //       if (state is AuthStateChecking) {
    //         BotToast.showLoading();
    //       } else if (state is AuthStateFailure) {
    //         BotToast.showText(text: state.errorMassage);
    //       } else if (state is AuthStateAuthenticated) {
    //         BotToast.showText(text: "success");
    //       }
    //     },
    //     builder: ((context, state) {
    //       if (state is AuthStateAuthenticated) {
    //         return Column(
    //           children: [
    //             const Text("hello your token is"),
    //             ElevatedButton(
    //                 onPressed: () {
    //                   context.read<AuthBloc>().add(AuthEventLogout());
    //                 },
    //                 child: const Text("Logout"))
    //           ],
    //         );
    //       } else {
    //         return ReactiveForm(
    //           formGroup: form,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               // ProgressBar(value: state.value),
    //               const SizedBox(
    //                 height: 13,
    //               ),
    //               const Login(),
    //               Container(
    //                 height: 50,
    //                 width: double.infinity,
    //                 child: ElevatedButton(
    //                   style: ElevatedButton.styleFrom(
    //                     primary: Theme.of(context).colorScheme.primary,
    //                     padding: const EdgeInsets.symmetric(vertical: 13),
    //                   ),
    //                   onPressed: () {
    //                     context.read<AuthBloc>().add(AuthEventLogin(
    //                         form.value["email"] as String,
    //                         form.value["password"] as String));

    //                     print(
    //                         "--------------values of form are ${form.value}-------------");
    //                   },
    //                   child: Text(
    //                     "Login",
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .titleMedium!
    //                         .copyWith(color: Color(0xffF7F9FB), fontSize: 16),
    //                   ),
    //                 ),
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Text(
    //                     'Forgot your password? ',
    //                     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
    //                           color: Theme.of(context).colorScheme.outline,
    //                           fontWeight: FontWeight.w400,
    //                           fontSize: 14,
    //                         ),
    //                   ),
    //                   TextButton(
    //                     onPressed: () {
    //                       // Navigator.push(
    //                       //     context,
    //                       //     MaterialPageRoute(
    //                       //         builder: (_) => LoginPage(
    //                       //               showBack: true,
    //                       //             )));
    //                     },
    //                     child: Text(
    //                       ' Reset',
    //                       style: Theme.of(context)
    //                           .textTheme
    //                           .bodyMedium!
    //                           .copyWith(
    //                             color: Theme.of(context).colorScheme.secondary,
    //                             fontWeight: FontWeight.w700,
    //                             fontSize: 14,
    //                           ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         );
    //       }
    //     }),
    //   ),
    // );
  }
}

import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class mobilScreen extends StatelessWidget {
  const mobilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                      create: (context) => UserFormBloc(
                          // AccountsService(userRepository: _userRepository)),
                          )
                      // BlocProvider(
                      //   create: (context) => AuthBloc(_userRepository)
                      //     ..add(AuthEventCheckCurrentState()),
                      ),
                ],
                child: RegisterPage(),
              ),
            ),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
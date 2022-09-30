import 'package:fizyo_app_frontend/src/users_managments/blocs/email_ver_bloc/email_ver_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/upload_files_widget_bloc/upload_files_widget_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/regester_page2.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/register.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class mobileScreen extends StatelessWidget {
  const mobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => UserFormBloc(
                  // AccountsService(userRepository: _userRepository)),
                  ),

              // BlocProvider(
              //   create: (context) => AuthBloc(_userRepository)
              //     ..add(AuthEventCheckCurrentState()),
            ),
            BlocProvider(
              create: (context) => UiChangeBloc(),
            ),
            BlocProvider(
              create: (context) => UploadFilesWidgetBloc(),
            ),
            BlocProvider(
              create: (context) => EmailVerBloc(),
            ),
          ],
          child: RegisterPage(),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

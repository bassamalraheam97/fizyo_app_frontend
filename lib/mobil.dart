import 'package:dio/dio.dart';
import 'src/users_managments/application/accounts_service.dart';
import 'src/users_managments/blocs/auth_bloc/auth_bloc.dart';
import 'src/users_managments/blocs/auth_bloc/auth_event.dart';
import 'src/users_managments/blocs/email_ver_bloc/email_ver_bloc.dart';
import 'src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'src/users_managments/blocs/upload_files_widget_bloc/upload_files_widget_bloc.dart';
import 'src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'src/users_managments/data/client_repository.dart';
import 'src/users_managments/data/http_client_repository.dart';
import 'src/users_managments/data/http_s_provider_repository.dart';
import 'src/users_managments/data/http_user_repository.dart';
import 'src/users_managments/data/s_provider_repository.dart';
import 'src/users_managments/data/user_repository.dart';
import 'src/users_managments/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class mobileScreen extends StatelessWidget {
  mobileScreen({super.key});

  late UserRepository _userRepository;
  late ClientRepository _clientRepository;
  late ServiceProviderRepository _serviceProviderRepository;
  @override
  Widget build(BuildContext context) {
    var options = BaseOptions(
      baseUrl: 'http://192.168.0.19:8000',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = Dio(options);

    _userRepository = HttpUserRepository(dio);
    _clientRepository = HttpClientRepository(dio);
    _serviceProviderRepository = HttpserviceProviderRepository(provider: dio);

    return SafeArea(
      child: Center(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => UserFormBloc(AccountsService(
                userRepository: _userRepository,
                clientRepository: _clientRepository,
                serviceProviderRepository: _serviceProviderRepository,
              )),
            ),
            // BlocProvider(
            //   create: (context) =>
            //       AuthBloc(_userRepository)..add(AuthEventCheckCurrentState()),
            // ),
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

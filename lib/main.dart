// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:fizyo_app_frontend/mobil.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/http_s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/service_provider.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/register_page.dart';
import 'package:fizyo_app_frontend/theme/color_schemes.g.dart';
import 'package:fizyo_app_frontend/theme/custom_color.g.dart';
import 'package:fizyo_app_frontend/user_form_observer.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './src/presentation/widgets/stepper.dart';
import 'desktop.dart';

void main() {
  Bloc.observer = UserFormObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null && darkDynamic != null) {
          lightScheme = lightDynamic.harmonized();
          lightCustomColors = lightCustomColors.harmonized(lightScheme);

          // Repeat for the dark color scheme.
          darkScheme = darkDynamic.harmonized();
          darkCustomColors = darkCustomColors.harmonized(darkScheme);
        } else {
          // Otherwise, use fallback schemes.
          lightScheme = lightColorScheme;
          darkScheme = darkColorScheme;
        }

        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightScheme,
            extensions: [lightCustomColors],
            fontFamily: 'Recoleta',
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkScheme,
            extensions: [darkCustomColors],
            fontFamily: 'Recoleta',
          ),
          // builder: (context, child) {
          //   child = botToastBuilder(context, child);
          //   return child;
          // },
          navigatorObservers: [BotToastNavigatorObserver()],
          home: const MyHomePage(
            title: "Fizyo App",
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // late Service_provider pro;
  void _incrementCounter() async {
//   var options = BaseOptions(
//   baseUrl: 'http://localhost:8000',
//   connectTimeout: 5000,
//   receiveTimeout: 3000,
// );
//   Dio dio = Dio(options);
//   serviceProviderRepository _provider=HttpserviceProviderRepository(provider: dio);
//
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),

        body: LayoutBuilder(builder: (context, constraint) {
            if (constraint.maxWidth > 500) {
              return DesktopScreen();
            } else {
              return mobilScreen();
            }
          }),);

        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                ],
                child: RegisterPage(),
              ),
            ),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));

  }
}

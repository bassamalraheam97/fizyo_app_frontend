// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:fizyo_app_frontend/desktop_register.dart';
import 'package:fizyo_app_frontend/mobil.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/auth_bloc/auth_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/auth_bloc/auth_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/http_user_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/user_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/user.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/login_page.dart';
import 'package:fizyo_app_frontend/theme/color_schemes.g.dart';
import 'package:fizyo_app_frontend/theme/custom_color.g.dart';
import 'package:fizyo_app_frontend/user_form_observer.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      final botToastBuilder = BotToastInit();
      return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightScheme,
          extensions: [lightCustomColors],
          fontFamily: 'Recoleta',
          //textTheme: TextTheme(headline1:TextStyle(fontSize:MediaQuery.of(context).size.width/100,)),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkScheme,
          extensions: [darkCustomColors],
          fontFamily: 'Recoleta',
        ),

        builder: (context, child) {
          child = botToastBuilder(context, child);
          return child;
        },
        navigatorObservers: [BotToastNavigatorObserver()],
        debugShowCheckedModeBanner: false,

        home: const MyHomePage(
          title: "Fyzio App",
        ),
        // home: Scaffold(
        //   body: LayoutBuilder(builder: (context, constraint) {
        //     if (constraint.maxWidth > 700) {
        //       return DesktopScreen();
        //     } else {
        //       return mobileScreen();
        //     }
        //   }),
        // ),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  late User user;
  late UserRepository _userRepository;
  @override
  void initState() {
    super.initState();
    var options = BaseOptions(
      baseUrl: 'http://192.168.1.9:8000',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = Dio(options);

    _userRepository = HttpUserRepository(client: dio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MultiBlocProvider(
                providers: [
                  // BlocProvider(
                  //   create: (context) => UserFormBloc(
                  //       AccountsService(userRepository: _userRepository)),
                  // ),
                  BlocProvider(
                    create: (context) => AuthBloc(_userRepository)
                      ..add(AuthEventCheckCurrentState()),
                  ),
                ],
                child: LoginPage(),
              ),
            ),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:fizyo_app_frontend/desktop_register.dart';
import 'package:fizyo_app_frontend/mobil.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/title_description.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/http_s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/service_provider.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/layout.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/pages/register_page.dart';
import 'package:fizyo_app_frontend/theme/color_schemes.g.dart';
import 'package:fizyo_app_frontend/theme/custom_color.g.dart';
import 'package:fizyo_app_frontend/user_form_observer.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './src/presentation/widgets/stepper.dart';


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
            //textTheme: TextTheme(headline1:TextStyle(fontSize:MediaQuery.of(context).size.width/100,)),
            
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkScheme,
            extensions: [darkCustomColors],
            fontFamily: 'Recoleta',
          ),
          navigatorObservers: [BotToastNavigatorObserver()],
          debugShowCheckedModeBanner: false,
          home: LayoutSelection(desktop: DesktopScreen(),mobil: mobileScreen(),),
          );
    });
  }
}

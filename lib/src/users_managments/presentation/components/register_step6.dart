import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/text_image.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterStep6 extends StatelessWidget {
  final UiChangeState uiState;
  const RegisterStep6({super.key, required this.uiState});
  // final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }

  @override
  Widget build(BuildContext context) {
    Color getAotherColor(String c) {
      if (c == uiState.widgetName) {
        return Color(0xffF7F9FB);
      } else {
        return Colors.white;
      }
    }

    // Color colorBack = Color(0xffF7F9FB);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            context
                .read<UiChangeBloc>()
                .add(UiChangeEventChangeColor(Color(0xffF7F9FB), 'home'));

            // Color(0xffF7F9FB);
          },
          child: Container(
            decoration: BoxDecoration(
              color: getAotherColor(uiState.widgetName),
              border: Border.all(
                  width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(25),
            ),
            // color: Colors.white,
            width: 165,
            height: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageViewer(
                    imageURL: 'assets/images/home.png',
                    height: 81.12,
                    width: 110,
                    radius: 0),
                const SizedBox(
                  height: 22.37,
                ),
                Text(
                  'Home',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<UiChangeBloc>()
                .add(UiChangeEventChangeColor(Color(0xffF7F9FB), 'online'));

            // Color(0xffF7F9FB);
          },
          child: Container(
            decoration: BoxDecoration(
              color: getAotherColor(uiState.widgetName),
              border: Border.all(
                  width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(25),
            ),
            // color: Colors.white,
            width: 165,
            height: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageViewer(
                    imageURL: 'assets/images/online.png',
                    height: 81.12,
                    width: 110,
                    radius: 0),
                const SizedBox(
                  height: 22.37,
                ),
                Text(
                  'Online',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<UiChangeBloc>()
                .add(UiChangeEventChangeColor(Color(0xffF7F9FB), 'office'));

            // Color(0xffF7F9FB);
          },
          child: Container(
            decoration: BoxDecoration(
              color: getAotherColor(uiState.widgetName),
              border: Border.all(
                  width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(25),
            ),
            // color: Colors.white,
            width: 165,
            height: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageViewer(
                    imageURL: 'assets/images/center.png',
                    height: 81.12,
                    width: 110,
                    radius: 0),
                const SizedBox(
                  height: 22.37,
                ),
                Text(
                  'Center',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    // });
  }
}

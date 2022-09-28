
import 'package:fizyo_app_frontend/src/presentation/widgets/text_image.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterStep4 extends StatelessWidget {
  final UiChangeState uiState;
  const RegisterStep4({super.key, required this.uiState});
  // final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }

  @override
  Widget build(BuildContext context) {
    Color getAotherColor(Color c) {
      if (c == const Color(0xffF7F9FB)) {
        return Colors.white;
      } else {
        return const Color(0xffF7F9FB);
      }
    }

    // Color colorBack = Color(0xffF7F9FB);
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            context
                .read<UiChangeBloc>()
                .add(UiChangeEventChangeColor(const Color(0xffF7F9FB), 'male'));

            // Color(0xffF7F9FB);
          },
          child: TextImage(
            typeCard: 'male',
            widthWidget: 163,
            heightWidget: 388.61,
            listImage: [320.61, 100, 0],
            backColor: uiState.newColor,
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<UiChangeBloc>()
                .add(UiChangeEventChangeColor(Colors.white, 'female'));
          },
          child: TextImage(
            typeCard: 'female',
            widthWidget: 163,
            heightWidget: 388.61,
            listImage: [320.61, 100, 0],
            backColor: getAotherColor(uiState.newColor!),
          ),
        ),
      ],
    );
    // });
  }
}

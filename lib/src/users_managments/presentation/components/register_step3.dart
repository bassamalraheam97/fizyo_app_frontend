import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterStep3 extends StatelessWidget {
  final UiChangeState uiState;
  const RegisterStep3({super.key, required this.uiState});
  // final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }

  @override
  Widget build(BuildContext context) {
    Color getAotherColor(Color c) {
      if (c == Colors.white) {
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
                .add(UiChangeEventChangeColor(Color(0xffF7F9FB), 'patient'));

            // Color(0xffF7F9FB);
          },
          child: PatientPhysioCard(
              typeCard: 'patient', backColor: uiState.newColor),
        ),
        const SizedBox(
          height: 13,
        ),
        GestureDetector(
            onTap: () {
              context
                  .read<UiChangeBloc>()
                  .add(UiChangeEventChangeColor(Colors.white, 'physio'));
            },
            child: PatientPhysioCard(
                typeCard: 'physio',
                backColor: getAotherColor(uiState.newColor!))),
      ],
    );
    // });
  }
}

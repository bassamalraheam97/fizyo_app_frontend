import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterStep3 extends StatelessWidget {
  const RegisterStep3({
    super.key,
  });
  // final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }

  @override
  Widget build(BuildContext context) {
    Color colorBack = Colors.white;
    return BlocBuilder<UiChangeBloc, UiChangeState>(builder: (context, state) {
      return Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              colorBack != state.newColor
                  ? (context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventChangeColor(Colors.white)))
                  : (context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventChangeColor(Colors.red)));

              // Color(0xffF7F9FB);
            },
            child: PatientPhysioCard(
                typeCard: 'patient', backColor: state.newColor),
          ),
          const SizedBox(
            height: 13,
          ),
          GestureDetector(
              onTap: () {
                colorBack != null ? null : colorBack = Color(0xffF7F9FB);
              },
              child:
                  PatientPhysioCard(typeCard: 'physio', backColor: colorBack)),
        ],
      );
    });
  }
}

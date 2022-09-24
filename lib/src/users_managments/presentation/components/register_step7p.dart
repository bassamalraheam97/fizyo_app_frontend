import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/specialities_feelings.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/text_image.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterStep7p extends StatelessWidget {
  final UiChangeState uiState;
  RegisterStep7p({super.key, required this.uiState});
  // final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }

  @override
  Widget build(BuildContext context) {
    Color initColor = Theme.of(context).colorScheme.surface;
    Color secondColor = Theme.of(context).colorScheme.surfaceVariant;

    Color getColor(bool c) {
      if (c) {
        return secondColor;
      } else {
        return initColor;
      }
    }

    return Table(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <TableRow>[
        TableRow(
          children: [
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  // print(isColoredMap);
                  context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventMultiChangeColor(initColor, 'injury'));
                } else {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(secondColor, 'injury'));
                }
                // print(uiState.isColoredMap);
              },
              child: SpecialitiesFeelings(
                text: 'Injury',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget: getColor(uiState.isColoredMap?['injury'] ?? false),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(initColor, 'soreness'));
                } else {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(secondColor, 'soreness'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'Soreness',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget:
                    getColor(uiState.isColoredMap?['soreness'] ?? false),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(initColor, 'chronic pain'));
                } else {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(
                          secondColor, 'chronic pain'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'Chronic Pain',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget:
                    getColor(uiState.isColoredMap?['chronic pain'] ?? false),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(initColor, 'neck pain'));
                } else {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(secondColor, 'neck pain'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'neck pain',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget:
                    getColor(uiState.isColoredMap?['neck pain'] ?? false),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(initColor, 'soft tissue'));
                } else {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(
                          secondColor, 'soft tissue'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'soft tissue',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget:
                    getColor(uiState.isColoredMap?['soft tissue'] ?? false),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(
                          initColor, 'shoulder pain'));
                  // isColored['soreness'] = 0;
                } else {
                  context.read<UiChangeBloc>().add(
                      UiChangeEventMultiChangeColor(
                          secondColor, 'shoulder pain'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'shoulder pain',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget:
                    getColor(uiState.isColoredMap?['shoulder pain'] ?? false),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventMultiChangeColor(initColor, 'chip0'));
                } else {
                  context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventMultiChangeColor(secondColor, 'chip0'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'chip0',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget: getColor(uiState.isColoredMap?['chip0'] ?? false),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (uiState.newColor != initColor) {
                  context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventMultiChangeColor(initColor, 'chip1'));
                } else {
                  context
                      .read<UiChangeBloc>()
                      .add(UiChangeEventMultiChangeColor(secondColor, 'chip1'));
                }
              },
              child: SpecialitiesFeelings(
                text: 'chip1',
                width: 150,
                height: 50,
                radius: 25,
                colorWidget: getColor(uiState.isColoredMap?['chip1'] ?? false),
              ),
            ),
          ],
        ),
      ],
    );
    // });
  }
}

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

class RegisterStep7e extends StatelessWidget {
  final UiChangeState uiState;
  RegisterStep7e({super.key, required this.uiState});
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

    return Column(
      children: [
        Table(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <TableRow>[
            TableRow(
              children: [
                GestureDetector(
                  onTap: () {
                    if (uiState.newColor != initColor) {
                      // print(isColoredMap);
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              initColor, 'Pediatrics'));
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              secondColor, 'Pediatrics'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: 'Pediatrics',
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget:
                        getColor(uiState.isColoredMap?['Pediatrics'] ?? false),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (uiState.newColor != initColor) {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(initColor, 'Sports'));
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(secondColor, 'Sports'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: 'Sports',
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget:
                        getColor(uiState.isColoredMap?['Sports'] ?? false),
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
                          UiChangeEventMultiChangeColor(
                              initColor, 'Womens health'));
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              secondColor, 'Womens health'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: "Women's health",
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget: getColor(
                        uiState.isColoredMap?['Womens health'] ?? false),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (uiState.newColor != initColor) {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              initColor, 'Cardiovascular'));
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              secondColor, 'Cardiovascular'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: 'Cardiovascular',
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget: getColor(
                        uiState.isColoredMap?['Cardiovascular'] ?? false),
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
                          UiChangeEventMultiChangeColor(
                              initColor, 'Neurology'));
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              secondColor, 'Neurology'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: 'Neurology',
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget:
                        getColor(uiState.isColoredMap?['Neurology'] ?? false),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (uiState.newColor != initColor) {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              initColor, 'Geriatrics'));
                      // isColored['soreness'] = 0;
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              secondColor, 'Geriatrics'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: 'Geriatrics',
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget:
                        getColor(uiState.isColoredMap?['Geriatrics'] ?? false),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                SpecialitiesFeelings(
                  text: '',
                  width: 150,
                  height: 50,
                  radius: 25,
                  showBorder: false,
                ),
                GestureDetector(
                  onTap: () {
                    if (uiState.newColor != initColor) {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              initColor, 'Orthopedics'));
                    } else {
                      context.read<UiChangeBloc>().add(
                          UiChangeEventMultiChangeColor(
                              secondColor, 'Orthopedics'));
                    }
                  },
                  child: SpecialitiesFeelings(
                    text: 'Orthopedics',
                    width: 150,
                    height: 50,
                    radius: 25,
                    colorWidget:
                        getColor(uiState.isColoredMap?['Orthopedics'] ?? false),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        ImageViewer(
            imageURL: "assets/images/ph.png",
            height: 245.45,
            width: 213.59,
            radius: 0),
      ],
    );
    // });
  }
}

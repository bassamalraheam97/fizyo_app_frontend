import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/text_image.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_event.dart';
// import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterStep5 extends StatelessWidget {
  final UiChangeState uiState;
  const RegisterStep5({super.key, required this.uiState});
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
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: ImageViewer(
                imageURL: 'assets/images/pic1.png',
                height: 175,
                width: 175,
                radius: 10,
                backColor: Color(0xffF7F9FB),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () {},
                child: Text(
                  '+',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ],
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<UiChangeBloc>().add(
                        UiChangeEventChangeColor(Color(0xffF7F9FB), 'pic1'));

                    // Color(0xffF7F9FB);
                  },
                  child: ImageViewer(
                    imageURL: 'assets/images/pic1.png',
                    height: 165,
                    width: 165,
                    radius: 25,
                    backColor: getAotherColor('pic1'),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<UiChangeBloc>().add(
                        UiChangeEventChangeColor(Color(0xffF7F9FB), 'pic2'));

                    // Color(0xffF7F9FB);
                  },
                  child: ImageViewer(
                    imageURL: 'assets/images/pic2.png',
                    height: 165,
                    width: 165,
                    radius: 25,
                    backColor: getAotherColor('pic2'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<UiChangeBloc>().add(
                        UiChangeEventChangeColor(Color(0xffF7F9FB), 'pic4'));

                    // Color(0xffF7F9FB);
                  },
                  child: ImageViewer(
                    imageURL: 'assets/images/pic4.png',
                    height: 165,
                    width: 165,
                    radius: 25,
                    backColor: getAotherColor('pic4'),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<UiChangeBloc>().add(
                        UiChangeEventChangeColor(Color(0xffF7F9FB), 'pic3'));

                    // Color(0xffF7F9FB);
                  },
                  child: ImageViewer(
                    imageURL: 'assets/images/pic3.png',
                    height: 165,
                    width: 165,
                    radius: 25,
                    backColor: getAotherColor('pic3'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
    // });
  }
}

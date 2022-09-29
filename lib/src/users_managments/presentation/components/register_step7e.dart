import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/specialities_feelings.dart';
import '../../../presentation/widgets/text_image.dart';

class RegisterStep7e extends StatelessWidget {
  final FormGroup form;
  RegisterStep7e({super.key, required this.form});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: MultiSelectContainer(
            controller: _controller,

            itemsDecoration: MultiSelectDecorations(
              selectedDecoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 226, 236),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            // showInListView: true,
            // listViewSettings:
            //     ListViewSettings(scrollDirection: Axis.horizontal),
            items: [
              MultiSelectCard(
                clipBehavior: Clip.none,
                value: 'Pediatrics',
                child: SpecialitiesFeelings(
                  text: 'Pediatrics',
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
              MultiSelectCard(
                value: 'Sports',
                child: SpecialitiesFeelings(
                  text: 'Sports',
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
              MultiSelectCard(
                value: "Women's health",
                child: SpecialitiesFeelings(
                  text: "Women's health",
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
              MultiSelectCard(
                value: 'Cardiovascular',
                child: SpecialitiesFeelings(
                  text: 'Cardiovascular',
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
              MultiSelectCard(
                value: 'Neurology',
                child: SpecialitiesFeelings(
                  text: 'Neurology',
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
              MultiSelectCard(
                value: 'Geriatrics',
                child: SpecialitiesFeelings(
                  text: 'Geriatrics',
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
              MultiSelectCard(
                value: 'Orthopedics',
                child: SpecialitiesFeelings(
                  text: 'Orthopedics',
                  width: 150,
                  height: 50,
                  radius: 25,
                ),
              ),
            ],
            onChange: (List<dynamic> selectedItems, selectedItem) {
              List<String> li = [];
              for (var element in _controller.getSelectedItems()) {
                li.add(element);
              }
              form.control('diseasesOrSpecialties').updateValue(li);
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Image.asset(
          "assets/images/ph.jpg",
          width: 213.59,
          height: 245.45,
        ),
      ],
    );
  }
}

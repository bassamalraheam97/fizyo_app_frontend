import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/specialities_feelings.dart';
import '../../../presentation/widgets/text_image.dart';

class RegisterStep7p extends StatelessWidget {
  final FormGroup form;
  RegisterStep7p({super.key, required this.form});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiSelectContainer(
        controller: _controller,

        itemsDecoration: MultiSelectDecorations(
          selectedDecoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 226, 236),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        // showInListView: true,
        // listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
        items: [
          MultiSelectCard(
            value: 'Injury',
            child: SpecialitiesFeelings(
              text: 'Injury',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'soreness',
            child: SpecialitiesFeelings(
              text: 'soreness',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chronic pain',
            child: SpecialitiesFeelings(
              text: 'chronic pain',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'neck pain',
            child: SpecialitiesFeelings(
              text: 'neck pain',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'soft tissue',
            child: SpecialitiesFeelings(
              text: 'soft tissue',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'shoulder pain',
            child: SpecialitiesFeelings(
              text: 'shoulder pain',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chip0',
            child: SpecialitiesFeelings(
              text: 'chip0',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chip1',
            child: SpecialitiesFeelings(
              text: 'chip1',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chip',
            child: SpecialitiesFeelings(
              text: 'chip',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chip',
            child: SpecialitiesFeelings(
              text: 'chip',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chip',
            child: SpecialitiesFeelings(
              text: 'chip',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'chip',
            child: SpecialitiesFeelings(
              text: 'chip',
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
    );
  }
}

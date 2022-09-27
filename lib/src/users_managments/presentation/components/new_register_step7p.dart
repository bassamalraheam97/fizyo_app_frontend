import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/specialities_feelings.dart';
import '../../../presentation/widgets/text_image.dart';

class NewRegisterStep7p extends StatelessWidget {
  NewRegisterStep7p({super.key});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiSelectContainer(
        controller: _controller,
        highlightColor: Colors.grey,
        maxSelectableCount: 1,
        itemsDecoration: MultiSelectDecorations(
          decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1)),
          selectedDecoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.grey, Colors.lightGreen]),
          ),
        ),
        // showInListView: true,
        // listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
        items: [
          MultiSelectCard(
            value: 'Male',
            label: "Male",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: SpecialitiesFeelings(
              text: 'Pediatrics',
              width: 150,
              height: 50,
              radius: 25,
            ),
          ),
        ],
        onChange: (List<dynamic> selectedItems, selectedItem) {
          for (var element in _controller.getSelectedItems()) {
            print(element);
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/specialities_feelings.dart';
import '../../../presentation/widgets/text_image.dart';

class NewRegisterStep7e extends StatelessWidget {
  NewRegisterStep7e({super.key});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiSelectContainer(
        controller: _controller,
        highlightColor: Color.fromARGB(255, 225, 226, 236),
        // ignore: prefer_const_constructors
        itemsDecoration: MultiSelectDecorations(
          // decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1)),
          selectedDecoration: const BoxDecoration(
            color: Color.fromARGB(255, 225, 226, 236),
          ),
        ),
        // showInListView: true,
        // listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
        items: [
          MultiSelectCard(
            value: 'Pediatrics',
            label: "Pediatrics",
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
            enabled: false,
            alignment: Alignment.center,
            child: Image(
                image: AssetImage('assets/images/ph.png'),
                height: 245,
                width: 213,
                fit: BoxFit.fill),
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

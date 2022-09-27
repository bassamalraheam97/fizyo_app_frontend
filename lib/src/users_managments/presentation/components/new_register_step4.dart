import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/text_image.dart';

class NewRegisterStep4 extends StatelessWidget {
  NewRegisterStep4({super.key});
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
          //decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1)),
          selectedDecoration: const BoxDecoration(
            color: Color.fromARGB(255, 225, 226, 236),
          ),
        ),
        // showInListView: true,
        // listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
        items: [
          MultiSelectCard(
            value: 'Male',
            label: "Male",
            child: TextImage(
              typeCard: 'male',
              widthWidget: 163,
              heightWidget: 388.61,
              listImage: [320.61, 100, 0],
            ),
          ),
          MultiSelectCard(
            value: 'Female',
            label: "Female",
            child: TextImage(
              typeCard: 'female',
              widthWidget: 163,
              heightWidget: 388.61,
              listImage: [320.61, 100, 0],
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

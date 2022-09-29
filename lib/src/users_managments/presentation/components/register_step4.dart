import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/text_image.dart';

class RegisterStep4 extends StatelessWidget {
  final FormGroup form;
  RegisterStep4({super.key, required this.form});
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
        singleSelectedItem: true,
        listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
        items: [
          MultiSelectCard(
            selected: form.control('gender').value == 'male' ? true : false,
            value: 'male',
            child: TextImage(
              typeCard: 'male',
              widthWidget: 163,
              heightWidget: 388.61,
              listImage: [320.61, 127, 0],
            ),
          ),
          MultiSelectCard(
            selected: form.control('gender').value == 'female' ? true : false,
            value: 'female',
            child: TextImage(
              typeCard: 'female',
              widthWidget: 163,
              heightWidget: 388.61,
              listImage: [320.61, 127, 0],
            ),
          ),
        ],
        onChange: (List<dynamic> selectedItems, selectedItem) {
          for (var element in _controller.getSelectedItems()) {
            form.control('gender').updateValue(element);
            print(form.value);
          }
        },
      ),
    );
  }
}

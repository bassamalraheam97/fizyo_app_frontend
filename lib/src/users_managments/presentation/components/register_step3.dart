// ignore_for_file: prefer_const_constructors

import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep3 extends StatelessWidget {
  final FormGroup form;
  RegisterStep3({super.key, required this.form});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: false);

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
        listViewSettings: ListViewSettings(scrollDirection: Axis.vertical),
        items: [
          MultiSelectCard(
            selected: form.control('accountType').value == 'PT' ? true : false,
            value: 'PT',
            child: PatientPhysioCard(
              typeCard: 'patient',
            ),
          ),
          MultiSelectCard(
              selected:
                  form.control('accountType').value == 'PA' ? true : false,
              value: 'PA',
              child: PatientPhysioCard(
                typeCard: 'physio',
              )),
        ],
        onChange: (List<dynamic> selectedItems, selectedItem) {
          for (var element in _controller.getSelectedItems()) {
            form.control('accountType').updateValue(element);
            print(form.value);
          }
        },
      ),
    );
  }
}

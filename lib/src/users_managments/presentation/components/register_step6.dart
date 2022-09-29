// ignore_for_file: prefer_const_constructors

import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/patient_physio_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../presentation/widgets/patient_card.dart';

class RegisterStep6 extends StatelessWidget {
  final FormGroup form;
  RegisterStep6({super.key, required this.form});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: MultiSelectContainer(
        controller: _controller,
        itemsDecoration: MultiSelectDecorations(
          selectedDecoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 226, 236),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        listViewSettings: ListViewSettings(scrollDirection: Axis.vertical),
        items: [
          MultiSelectCard(
            value: 'home',
            child: Container(
              width: 165,
              height: 165,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageViewer(
                      imageURL: 'assets/images/home.png',
                      height: 81.12,
                      width: 110,
                      radius: 0),
                  const SizedBox(
                    height: 22.37,
                  ),
                  Text(
                    'Home',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          MultiSelectCard(
            value: 'online',
            child: Container(
              width: 165,
              height: 165,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageViewer(
                      imageURL: 'assets/images/online.png',
                      height: 81.12,
                      width: 110,
                      radius: 0),
                  const SizedBox(
                    height: 22.37,
                  ),
                  Text(
                    'Online',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          MultiSelectCard(
            value: 'office',
            child: Container(
              width: 165,
              height: 165,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageViewer(
                      imageURL: 'assets/images/center.png',
                      height: 81.12,
                      width: 110,
                      radius: 0),
                  const SizedBox(
                    height: 22.37,
                  ),
                  Text(
                    'Center',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
        onChange: (List<dynamic> selectedItems, selectedItem) {
          List<String> li = [];
          for (var element in _controller.getSelectedItems()) {
            li.add(element);
          }
          form.control('preferredServiceType').updateValue(li);
        },
      ),
    );
  }
}

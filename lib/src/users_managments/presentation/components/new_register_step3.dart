import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/patient_card.dart';

class NewRegisterStep3 extends StatelessWidget {
  NewRegisterStep3({super.key});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiSelectContainer(
        controller: _controller,
        itemsDecoration: MultiSelectDecorations(
          //decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1)),
          selectedDecoration: const BoxDecoration(
            color: Color.fromARGB(255, 225, 226, 236),
          ),
        ),
        maxSelectableCount: 1,
        showInListView: true,
        listViewSettings: ListViewSettings(scrollDirection: Axis.vertical),
        items: [
          MultiSelectCard(
            value: 'Patient',
            label: "label",
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: Color(0xffF7F9FB),
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(25),
              ),
              // color: Colors.white,
              width: 350,
              height: 193,
              padding: const EdgeInsets.fromLTRB(19, 13, 1, 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 188,
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Text('I am a patient',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                      fontSize: 24,
                                    ),
                                textAlign: TextAlign.left),
                            const SizedBox(
                              height: 62,
                            ),
                            Text(
                              'Find a physiotherapist online,'
                              'book a session,  and more',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      fontSize: 14),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  Expanded(
                    child: const Image(
                      image: AssetImage('assets/images/patient.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MultiSelectCard(
            value: 'Therapist',
            label: "label",
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: Color(0xffF7F9FB),
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(25),
              ),
              // color: Colors.white,
              width: 350,
              height: 193,
              padding: const EdgeInsets.fromLTRB(19, 13, 1, 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 188,
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Text('I am a physiotherapist',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                      fontSize: 24,
                                    ),
                                textAlign: TextAlign.left),
                            const SizedBox(
                              height: 62,
                            ),
                            Text(
                              'Find  patients, agree on sessions, and more',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      fontSize: 14),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  Expanded(
                    child: const Image(
                      image: AssetImage('assets/images/pic1.png'),
                    ),
                  ),
                ],
              ),
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

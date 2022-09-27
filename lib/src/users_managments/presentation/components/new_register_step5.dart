import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/text_image.dart';

class NewRegisterStep5 extends StatelessWidget {
  NewRegisterStep5({super.key});
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
          // decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1)),
          selectedDecoration: const BoxDecoration(
            color: Color.fromARGB(255, 225, 226, 236),
          ),
        ),
        // showInListView: true,
        // listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
        items: [
          MultiSelectCard(
              alignment: Alignment.center,
              value: 'ADD',
              label: "ADD",
              child: Image(
                image: AssetImage('assets/images/pic1.png'),
                height: 165,
                width: 165,
              )),
          MultiSelectCard(
              value: 'assets/images/pic2.png',
              label: "assets/images/pic2.png",
              child: Image(
                image: AssetImage('assets/images/pic2.png'),
                height: 165,
                width: 165,
              )),
          MultiSelectCard(
              value: 'assets/images/pic3.png',
              label: "assets/images/pic3.png",
              child: Image(
                  image: AssetImage('assets/images/pic3.png'),
                  height: 165,
                  width: 165)),
          MultiSelectCard(
              value: 'assets/images/pic4.png',
              label: "assets/images/pic4.png",
              child: Image(
                  image: AssetImage('assets/images/pic4.png'),
                  height: 165,
                  width: 165)),
          MultiSelectCard(
              value: 'assets/images/pic1.png',
              label: "assets/images/pic1.png",
              child: Image(
                  image: AssetImage('assets/images/pic1.png'),
                  height: 165,
                  width: 165)),
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

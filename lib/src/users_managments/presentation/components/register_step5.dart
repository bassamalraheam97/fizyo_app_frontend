import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/text_image.dart';

class RegisterStep5 extends StatelessWidget {
  RegisterStep5({super.key});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);
  // bool isSelected(String val)
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: ImageViewer(
                imageURL: 'assets/images/pic1.png',
                height: 175,
                width: 175,
                radius: 10,
                backColor: Color(0xffF7F9FB),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () {},
                child: Text(
                  '+',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ],
        ),
        MultiSelectContainer(
          controller: _controller,
          itemsDecoration: MultiSelectDecorations(
            selectedDecoration: BoxDecoration(
              color: Color.fromARGB(255, 225, 226, 236),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          singleSelectedItem: true,
          // listViewSettings: ListViewSettings(scrollDirection: Axis.horizontal),
          items: [
            MultiSelectCard(
              value: 'assets/images/pic1.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic1.png',
                height: 165,
                width: 165,
                radius: 25,
              ),
            ),
            MultiSelectCard(
              value: 'assets/images/pic4.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic4.png',
                height: 165,
                width: 165,
                radius: 25,
              ),
            ),
            MultiSelectCard(
              value: 'assets/images/pic2.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic2.png',
                height: 165,
                width: 165,
                radius: 25,
              ),
            ),
            MultiSelectCard(
              value: 'assets/images/pic3.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic3.png',
                height: 165,
                width: 165,
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
      ],
    );
  }
}

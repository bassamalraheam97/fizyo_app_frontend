import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/text_image.dart';

class NewRegisterStep6 extends StatelessWidget {
  NewRegisterStep6({super.key});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiSelectContainer(
        controller: _controller,
        showInListView: true,
        listViewSettings: ListViewSettings(scrollDirection: Axis.vertical),
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
            value: 'Home',
            label: "Home",
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
          MultiSelectCard(
            value: 'Center',
            label: "Center",
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
          MultiSelectCard(
            value: 'Online',
            label: "Online",
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

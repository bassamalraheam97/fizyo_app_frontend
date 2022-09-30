import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_bloc.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_change_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../presentation/widgets/image_viewer.dart';
import '../../../presentation/widgets/patient_card.dart';
import '../../../presentation/widgets/text_image.dart';

class RegisterStep5 extends StatelessWidget {
  final FormGroup form;
  RegisterStep5({super.key, required this.form});
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);
  // bool isSelected(String val)
  File? _pickedFile;
  bool isUploadImage = false;
  @override
  Widget build(BuildContext context) {
    // File? getImageUrl() {
    //   if (form.control('profilePicture').value != null) {
    //     isUploadImage = true;
    //     return (form.control('profilePicture').value);
    //   } else {
    //     return null;
    //   }
    // }

    return Column(
      children: [
        BlocBuilder<UiChangeBloc, UiChangeState>(builder: (uiContext, uiState) {
          return Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: uiState.image),
              Positioned(
                bottom: 1,
                right: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () async {
                    FilePickerResult? file =
                        await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['jpg'],
                    );
                    if (file != null) {
                      _pickedFile = File(file.files.single.path!);

                      String fileName = file.files.single.name;
                      form.control('profilePicture').updateValue(_pickedFile);
                      isUploadImage = true;
                      uiContext
                          .read<UiChangeBloc>()
                          .add(UiChangeEventChangeImage(_pickedFile));
                    }
                    print(form.value);
                  },
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
          );
        }),
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
              selected: form.control('selectedImage').value.toString() ==
                          'assets/images/pic1.png' &&
                      !isUploadImage
                  ? true
                  : false,
              value: 'assets/images/pic1.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic1.png',
                height: 165,
                width: 165,
                radius: 25,
              ),
            ),
            MultiSelectCard(
              selected: form.control('selectedImage').value ==
                          'assets/images/pic4.png' &&
                      !isUploadImage
                  ? true
                  : false,
              value: 'assets/images/pic4.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic4.png',
                height: 165,
                width: 165,
                radius: 25,
              ),
            ),
            MultiSelectCard(
              selected: form.control('selectedImage').value ==
                          'assets/images/pic2.png' &&
                      !isUploadImage
                  ? true
                  : false,
              value: 'assets/images/pic2.png',
              child: ImageViewer(
                imageURL: 'assets/images/pic2.png',
                height: 165,
                width: 165,
                radius: 25,
              ),
            ),
            MultiSelectCard(
              selected: form.control('selectedImage').value ==
                          'assets/images/pic3.png' &&
                      !isUploadImage
                  ? true
                  : false,
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
              form.control('selectedImage').updateValue(element);
            }
          },
        ),
      ],
    );
    // });
  }
}

import 'dart:io';

import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:reactive_range_slider/reactive_range_slider.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep8 extends StatelessWidget {
  final Function(File) onChanged;
  final FormGroup form;
  RegisterStep8({super.key, required this.onChanged, required this.form});

  File? _pickedFile;
  @override
  Widget build(BuildContext context) {
    // Color colorBack = Color(0xffF7F9FB);
    return FormField<File>(
        // validator: validator,
        builder: (formFieldState) {
      return Column(
        children: [
          Container(
            width: double.infinity,
            child: ReactiveRangeSlider<RangeValues>(
              formControlName: 'input',
              min: 0,
              max: 1000,
              divisions: 100,
              activeColor: Theme.of(context).colorScheme.secondary,
              inactiveColor: Color(0xffF7F9FB),
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              ),
              onChangeEnd: (value) {
                // form.control('min')=[value:'f'];
                form.updateValue({
                  'firstName': form.control('firstName').value.toString(),
                  'lastName': form.control('lastName').value.toString(),
                  'phoneNumber': form.control('phoneNumber').value.toString(),
                  'email': form.control('email').value.toString(),
                  'verificationCode':
                      form.control('verificationCode').value.toString(),
                  'password': form.control('password').value.toString(),
                  'passwordConformation':
                      form.control('passwordConformation').value.toString(),
                  'input': RangeValues(value.start, value.end),
                  'min': value.start.round().toString(),
                  'max': value.end.round().toString(),
                  'bio': form.control('bio').value.toString(),
                });
                print(form.value);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child: ReactiveTextField(
                  formControlName: 'min',
                  decoration: InputDecoration(
                    labelText: 'Min',
                    labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    fillColor: Theme.of(context).colorScheme.surfaceVariant,
                    filled: true,
                  ),
                ),
              ),
              Text(
                'Session Fee',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 100,
                child: ReactiveTextField(
                  formControlName: 'max',
                  decoration: InputDecoration(
                    labelText: 'Max',
                    labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    fillColor: Theme.of(context).colorScheme.surfaceVariant,
                    filled: true,
                  ),
                  onChanged: (control) {
                    form.updateValue({
                      'firstName': form.control('firstName').value.toString(),
                      'lastName': form.control('lastName').value.toString(),
                      'phoneNumber':
                          form.control('phoneNumber').value.toString(),
                      'email': form.control('email').value.toString(),
                      'verificationCode':
                          form.control('verificationCode').value.toString(),
                      'password': form.control('password').value.toString(),
                      'passwordConformation':
                          form.control('passwordConformation').value.toString(),
                      'input': RangeValues(
                          double.parse(form.control('min').value),
                          double.parse(form.control('max').value)),
                      'min': form.control('min').value.toString(),
                      'max': form.control('max').value.toString(),
                      'bio': form.control('bio').value.toString(),
                    });
                    print(control);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 200,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
            child: FormTextField(
              formControlName: 'bio',
              labelText: 'Bio',
              maxLines: 7,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  // width: 229,
                  height: 40,
                  child: ReactiveTextField(
                    formControlName: 'certificate',
                    decoration: InputDecoration(
                      labelText: 'Certificate',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      fillColor: Theme.of(context).colorScheme.surfaceVariant,
                      filled: true,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.eye,
                      color: Color(0xffF7F9FB),
                    )),
              ),
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.error,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.delete,
                      color: Color(0xffF7F9FB),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  // width: 229,
                  height: 40,
                  child: ReactiveTextField(
                    formControlName: 'attachmentName',
                    decoration: InputDecoration(
                      labelText: 'Attachment Name',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      fillColor: Theme.of(context).colorScheme.surfaceVariant,
                      filled: true,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 83.33,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: IconButton(
                    onPressed: () async {
                      FilePickerResult? file = await FilePicker.platform
                          .pickFiles(
                              type: FileType.image, allowMultiple: false);
                      if (file != null) {
                        _pickedFile = File(file.files.first.path!);
                        // onChanged.call(_pickedFile!);
                      }
                    },
                    icon: Icon(
                      CupertinoIcons.cloud_upload,
                      color: Color(0xffF7F9FB),
                    )),
              ),
            ],
          ),
          if (formFieldState.hasError)
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Text(
                formFieldState.errorText!,
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                    color: Colors.red[700],
                    height: 0.5),
              ),
            ),
          const SizedBox(height: 57),
        ],
      );
    });
  }
}

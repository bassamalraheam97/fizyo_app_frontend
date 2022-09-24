import 'package:reactive_range_slider/reactive_range_slider.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/ui_chande_bloc/ui_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep8 extends StatelessWidget {
  final UiChangeState uiState;
  final FormGroup form;
  RegisterStep8({super.key, required this.uiState, required this.form});
  // final FormGroup form;
  // FormGroup getForm() {
  //   return form;
  // }
  // FormGroup buildForm() => fb.group({
  //       'input': FormControl<RangeValues>(value: const RangeValues(0, 10)),
  //     });

  // FormGroup form = FormGroup({
  //   'input': FormControl<RangeValues>(value: RangeValues(0, 1000)),
  //   'min': FormControl<String>(),
  //   'max': FormControl<String>(),
  // });
  @override
  Widget build(BuildContext context) {
    // Color colorBack = Color(0xffF7F9FB);
    return Container(
        child: ReactiveForm(
            formGroup: form,
            child: Column(
              children: [
                Container(
                  // width: 256,
                  child: ReactiveRangeSlider<RangeValues>(
                    formControlName: 'input',
                    min: 0,
                    max: 1000,
                    divisions: 10,
                    activeColor: Theme.of(context).colorScheme.secondary,
                    inactiveColor: Color(0xffF7F9FB),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    ),
                    onChangeEnd: (value) {
                      form.updateValue({
                        'min': value.start.toString(),
                        'max': value.end.toString()
                      });
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
                          labelStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          fillColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          filled: true,
                        ),
                      ),
                    ),
                    Text(
                      'Session Fee',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 100,
                      child: ReactiveTextField(
                        formControlName: 'max',
                        decoration: InputDecoration(
                          labelText: 'Max',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          fillColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                // ),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: const Text('Sign Up'),
                  onPressed: () {
                    print(form.value);

                    form.markAllAsTouched();
                  },
                ),
              ],
            )));

    // });
  }
}

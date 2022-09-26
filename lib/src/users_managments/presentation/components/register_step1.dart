import 'package:flutter/material.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

FormGroup form = FormGroup({
  'firstName': FormControl<String>(
      // validators: [Validators.minLength(3), Validators.required],
      ),
  'lastName': FormControl<String>(
      // validators: [Validators.minLength(3), Validators.required],
      ),
  'phoneNumber': FormControl<String>(
      // validators: [
      //   Validators.pattern(RegExp(
      //       r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)'))
      // ],
      ),
  'email': FormControl<String>(
      //   validators: [Validators.email, Validators.required],
      ),
});

class RegisterStep1 extends StatelessWidget {
  RegisterStep1({
    super.key,
    // required this.form,
  });
  // FormGroup getForm() {
  //   return form;
  // }
  // final FormGroup form;

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FormTextField(
            formControlName: "firstName",
            labelText: "First Name",
          ),
          SizedBox(
            height: 13,
          ),
          FormTextField(
            formControlName: "lastName",
            labelText: "Last Name",
          ),
          SizedBox(
            height: 13,
          ),
          FormTextField(
            formControlName: "phoneNumber",
            labelText: "Phone Number",
          ),
          SizedBox(
            height: 13,
          ),
          FormTextField(
            formControlName: "email",
            labelText: "email",
          ),
        ],
        // ),
      ),
    );
  }
}

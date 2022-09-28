import 'package:flutter/material.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterStep1 extends StatelessWidget {
  RegisterStep1({super.key, required this.form});
  FormGroup form;
  @override
  Widget build(BuildContext context) {
    print("${form.value} 221212222222222");
    return ReactiveForm(
        formGroup: form,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
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
        ));
  }
}

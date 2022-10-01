// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/form_text_field.dart';

class RegisterStep1 extends StatelessWidget {
  RegisterStep1({
    super.key,
    // required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
    // ),
    // });
  }
}

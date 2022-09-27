import 'package:fizyo_app_frontend/src/users_managments/blocs/user_form_bloc/user_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    Key? key,
    required this.formControlName,
    required this.labelText,
    this.obscure,
    this.action,
    this.onSubmitted,
    this.maxLines,
    this.onChanged,
  }) : super(key: key);
  final String formControlName;
  final String labelText;
  final bool? obscure;
  final TextInputAction? action;
  final Function(FormControl<Object?>)? onSubmitted;
  final int? maxLines;
  final Function(FormControl<Object?>)? onChanged;
  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: formControlName,
      obscureText: obscure ?? false,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 22.4, vertical: 16),
        labelText: labelText,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        alignLabelWithHint: true,
        labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        fillColor: Theme.of(context).colorScheme.surfaceVariant,
        filled: true,
      ),
      textInputAction: action,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
    );
  }
}

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? iconData;
  final TextInputType? keyboardType;
  final bool? hidePassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.iconData,
    this.keyboardType,
    this.hidePassword,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType,
      obscureText: hidePassword ?? false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) return 'Null!';
        return value.isEmpty ? 'Este campo no puede estar vacío' : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        label: labelText == null ? null : Text(labelText.toString()),
        helperText: helperText,
        counterText: '',
        icon: Icon(iconData),

        // counterStyle: ,
      ),
    );
  }
}

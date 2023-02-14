import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        debugPrint(value);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) return 'Null!';
        return value.isEmpty ? 'Este campo no puede estar vacío' : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        label: labelText == null ? null : Text(labelText.toString()),
        helperText: helperText,
        counterText: ' /20 caracteres',
        icon: const Icon(Icons.person),

        // counterStyle: ,
      ),
    );
  }
}

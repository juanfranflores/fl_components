import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Juan Flores :)',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  debugPrint(value);
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null) return 'Null!';
                  return value.isEmpty
                      ? 'Este campo no puede estar vacío'
                      : null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fl_components/widgets/widgets.dart';
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
            children: const [
              CustomInputField(
                  helperText: '',
                  hintText: 'Nombre',
                  keyboardType: TextInputType.name,
                  iconData: Icons.person),
              SizedBox(height: 30),
              CustomInputField(
                  helperText: '',
                  hintText: 'Apellido',
                  keyboardType: TextInputType.name,
                  iconData: Icons.person),
              SizedBox(height: 20),
              CustomInputField(
                  helperText: '',
                  hintText: 'Correo',
                  keyboardType: TextInputType.emailAddress,
                  iconData: Icons.email_outlined),
              SizedBox(height: 20),
              CustomInputField(
                  helperText: '',
                  hintText: 'Fecha de nacimiento',
                  keyboardType: TextInputType.datetime,
                  iconData: Icons.cake_outlined),
              SizedBox(height: 20),
              CustomInputField(
                  helperText: '',
                  hintText: 'Contraseña',
                  hidePassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  iconData: Icons.lock_outline),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

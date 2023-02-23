import 'dart:convert';

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    const String firstNameKey = 'fist_name';
    const String lastNameKey = 'last_name';
    const String emailKey = 'email';
    const String birthdayKey = 'birthday';
    const String passwordKey = 'password';
    const String roleKey = 'role';

    final Map<String, String> formValues = {
      firstNameKey: 'Juan',
      lastNameKey: 'Flores',
      emailKey: 'juan27fp@gmail.com',
      birthdayKey: DateTime(1997, 05, 27).toString(),
      passwordKey: 'password',
      roleKey: 'user',
    };

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
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  helperText: '',
                  hintText: 'Nombre',
                  keyboardType: TextInputType.name,
                  iconData: Icons.person,
                  formProperty: firstNameKey,
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  helperText: '',
                  hintText: 'Apellido',
                  keyboardType: TextInputType.name,
                  iconData: Icons.person,
                  formProperty: lastNameKey,
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  helperText: '',
                  hintText: 'Correo',
                  keyboardType: TextInputType.emailAddress,
                  iconData: Icons.email_outlined,
                  formProperty: emailKey,
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  helperText: '',
                  hintText: 'Fecha de nacimiento',
                  keyboardType: TextInputType.datetime,
                  iconData: Icons.cake_outlined,
                  formProperty: emailKey,
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  helperText: '',
                  hintText: 'Contraseña',
                  hidePassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  iconData: Icons.lock_outline,
                  formProperty: passwordKey,
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'user', child: Text('User')),
                  ],
                  onChanged: (value) {
                    debugPrint(value);
                    formValues[roleKey] = value ?? 'admin';
                  },
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      debugPrint('formulario no válido');
                      return;
                    }
                    debugPrint(jsonEncode(formValues));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Juan',
      'last_name': 'Flores',
      'email': 'juan27fp@gmail.com',
      'birthday': DateTime(1997, 05, 27).toString(),
      'password': 'password',
      'role': 'admin',
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
                const CustomInputField(
                    helperText: '',
                    hintText: 'Nombre',
                    keyboardType: TextInputType.name,
                    iconData: Icons.person),
                const SizedBox(height: 30),
                const CustomInputField(
                    helperText: '',
                    hintText: 'Apellido',
                    keyboardType: TextInputType.name,
                    iconData: Icons.person),
                const SizedBox(height: 20),
                const CustomInputField(
                    helperText: '',
                    hintText: 'Correo',
                    keyboardType: TextInputType.emailAddress,
                    iconData: Icons.email_outlined),
                const SizedBox(height: 20),
                const CustomInputField(
                    helperText: '',
                    hintText: 'Fecha de nacimiento',
                    keyboardType: TextInputType.datetime,
                    iconData: Icons.cake_outlined),
                const SizedBox(height: 20),
                const CustomInputField(
                    helperText: '',
                    hintText: 'Contraseña',
                    hidePassword: true,
                    keyboardType: TextInputType.visiblePassword,
                    iconData: Icons.lock_outline),
                const SizedBox(height: 20),
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

                      // formValues.forEach((key, value) {
                      //   debugPrint('$key : $value');
                      // });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

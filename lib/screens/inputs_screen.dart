import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firstName': 'Rubén',
      'lastName': 'Pacheco',
      'email': 'rubenpa.89@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
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
              children: <Widget>[
                const CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.supervised_user_circle_sharp,
                  suffixIcon: Icons.admin_panel_settings_outlined,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.supervised_user_circle_sharp,
                  suffixIcon: Icons.admin_panel_settings_outlined,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Mail de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.contact_mail_outlined,
                  //suffixIcon: Icons.admin_panel_settings_outlined,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Password',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.contact_mail_outlined,
                  suffixIcon: Icons.password_outlined,
                  textInputType: TextInputType.emailAddress,
                  hideField: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido.');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

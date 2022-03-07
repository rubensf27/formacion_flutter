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
    String _nombre = 'Nombre';
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
                CustomInputField(
                  labelText: _nombre,
                  hintText: 'Nombre de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.supervised_user_circle_sharp,
                  suffixIcon: Icons.admin_panel_settings_outlined,
                  formValues: formValues,
                  formProperty: 'firstName',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.supervised_user_circle_sharp,
                  suffixIcon: Icons.admin_panel_settings_outlined,
                  formValues: formValues,
                  formProperty: 'lastName',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Mail de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.contact_mail_outlined,
                  //suffixIcon: Icons.admin_panel_settings_outlined,
                  textInputType: TextInputType.emailAddress,
                  formValues: formValues, formProperty: 'email',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Password',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.contact_mail_outlined,
                  suffixIcon: Icons.password_outlined,
                  textInputType: TextInputType.emailAddress,
                  hideField: true,
                  formValues: formValues,
                  formProperty: 'password',
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  value: 'admin',
                  items: const [
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'user',
                      child: Text('User'),
                    ),
                    DropdownMenuItem(
                      value: 'superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'jrdeveloper',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    print('value: $value');
                    formValues['role'] = value.toString();
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    //FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido.');
                      //return;
                    }
                    _nombre = 'Hola';
                    print('Nombre: $_nombre');
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

import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: const <Widget>[
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre de usuario',
                helperText: 'Solo se permiten letras',
                icon: Icons.supervised_user_circle_sharp,
                suffixIcon: Icons.admin_panel_settings_outlined,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido de usuario',
                helperText: 'Solo se permiten letras',
                icon: Icons.supervised_user_circle_sharp,
                suffixIcon: Icons.admin_panel_settings_outlined,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Mail de usuario',
                helperText: 'Solo se permiten letras',
                icon: Icons.contact_mail_outlined,
                //suffixIcon: Icons.admin_panel_settings_outlined,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

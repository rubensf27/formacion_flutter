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
              SizedBox(
                width: 250,
                height: 70,
                child: CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  helperText: 'Solo se permiten letras',
                  icon: Icons.supervised_user_circle_sharp,
                  suffixIcon: Icons.admin_panel_settings_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
            children: <Widget>[
              TextFormField(
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                onChanged: (str) {
                  print(str);
                },
                validator: (str) {
                  if (str == null || str.isEmpty) {
                    return 'Este campo es requerido.';
                  }
                  return str.length < 3 ? 'Mínimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                  suffixIcon: const Icon(Icons.group_outlined),
                  //prefixIcon: Icon(Icons.verified_user_outlined),
                  icon: const Icon(Icons.assignment_ind_outlined),
                  errorStyle: TextStyle(color: Colors.deepOrange[200]),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

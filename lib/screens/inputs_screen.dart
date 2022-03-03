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
                initialValue: 'Rubén Pacheco',
                textCapitalization: TextCapitalization.words,
                onChanged: (str) {
                  print(str);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

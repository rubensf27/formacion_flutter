import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        elevation: 5,
        title: const Text('Título'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es el contenido de la alerta'),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => displayDialog(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Mostrar Alerta',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close_outlined),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  ListView1Screen({Key? key}) : super(key: key);
  final options = <String>[
    'JavaScript',
    'PHP',
    'C++',
    'GO',
    'Pascal',
    'Java',
    'Perl',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children: <Widget>[
          ...options
              .map(
                (language) => ListTile(
                  title: Text(language),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
          const Divider(),
        ],
      ),
    );
  }
}

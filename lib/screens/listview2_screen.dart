import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  ListView2Screen({Key? key}) : super(key: key);
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
        title: const Text('List View Tipo 2'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {
              final String language = options[index];
              print(language);
            },
          );
        },
        // separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}

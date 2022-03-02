import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: AppTheme.colorPrimary),
          title: const Text('Soy un título'),
          subtitle: const Text(
              'Et veniam ea minim elit aute anim consequat ullamco eiusmod aliquip. Tempor duis magna fugiat voluptate laborum deserunt anim exercitation proident. Consequat dolor proident est consequat culpa tempor anim sit culpa velit sit. Qui aliqua id qui sint aliquip.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Column(children: const <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://almanatura.com/wp-content/uploads/2015/03/emprendedor_ambiental-1-1200x799.jpeg?p=8725'),
            placeholder: AssetImage('assets/loading_fl_components.gif'),
          ),
        ]));
  }
}

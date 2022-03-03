import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.teal[900],
              child: const Text('RP'),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: const CircleAvatar(
            maxRadius: 30,
            backgroundImage: NetworkImage(
                'https://thumbs.dreamstime.com/b/bismillah-%C3%A1rabe-traducci%C3%B3n-musulm%C3%A1n-eid-ramadan-kareem-signo-degradado-color-icono-logo-s%C3%ADmbolo-del-logotipo-hermoso-texto-d-219254335.jpg)'),
          ),
        ),
      ),
    );
  }
}

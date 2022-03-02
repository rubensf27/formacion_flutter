import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: AppTheme.colorPrimary.withOpacity(0.4),
        elevation: 10,
        child: Column(children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://almanatura.com/wp-content/uploads/2015/03/emprendedor_ambiental-1-1200x799.jpeg?p=8725'),
            placeholder: AssetImage('assets/loading_fl_components.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Un hermoso amanecer.'),
          ),
        ]));
  }
}

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({this.nameCard, required this.imageUrl, Key? key})
      : super(key: key);

  final String imageUrl;
  final String? nameCard;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: AppTheme.colorPrimary.withOpacity(0.4),
        elevation: 10,
        child: Column(children: <Widget>[
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/loading_fl_components.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nameCard != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(nameCard!),
            ),
        ]));
  }
}

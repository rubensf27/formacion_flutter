import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://almanatura.com/wp-content/uploads/2015/03/emprendedor_ambiental-1-1200x799.jpeg?p=8725',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://ak.picdn.net/shutterstock/videos/2882158/thumb/1.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://www.10wallpaper.com/wallpaper/1920x1080/1612/Dawn_lake_bridge-Nature_Scenery_Wallpaper_1920x1080.jpg',
          ),
          SizedBox(
            height: 100,
          ),
          CustomCardType2(
            imageUrl:
                'https://cf.bstatic.com/xdata/images/hotel/max1280x900/127895442.jpg?k=771fef24f1b038bdce247da4acf4c7d06eb77216057e35f1fc0887af5cf4bf83&o=&hp=1',
            nameCard: 'Un hermoso paisaje',
          ),
        ],
      ),
    );
  }
}

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.colorPrimary,
              //divisions: 10,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
                print(value);
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://png.pngtree.com/png-clipart/20220130/ourmid/pngtree-watercolor-flower-wreath-from-dried-palm-leaves-and-roses-png-image_4377326.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

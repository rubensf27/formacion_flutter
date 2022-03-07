import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks Screen'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.colorPrimary,
            //divisions: 10,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                    print(value);
                  }
                : null,
          ),
          /** Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),*/
          /** CheckboxListTile(
            value: _sliderEnabled,
            activeColor: AppTheme.colorPrimary,
            title: const Text('Habilitar Slider'),
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),*/
          /**Switch(
            value: _sliderEnabled,
            activeColor: AppTheme.colorPrimary,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
          ),*/
          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.colorPrimary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1jFDtkcDL1jGX0a8qb_E5Hoxt4JORH805yw&usqp=CAU'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

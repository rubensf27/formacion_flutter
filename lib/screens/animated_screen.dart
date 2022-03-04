import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void onChangeShape() {
    final rnd = Random();
    _width = rnd.nextInt(300).toDouble() + 70;
    _height = rnd.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      rnd.nextInt(255),
      rnd.nextInt(255),
      rnd.nextInt(255),
      1,
    );
    _borderRadius = BorderRadius.circular(
      rnd.nextInt(100).toDouble() + 10,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeOutCubic,
          duration: const Duration(
            milliseconds: 400,
          ),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChangeShape,
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
      ),
    );
  }
}

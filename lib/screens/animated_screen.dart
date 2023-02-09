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
  Color _color = Colors.indigo;
  BorderRadius _borderRadius = BorderRadius.circular(10);
  void onChangeShape() {
    _width = Random().nextInt(230).toDouble() + 70;
    _height = Random().nextInt(230).toDouble() + 70;
    _color = Color.fromRGBO(
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
      1,
    );
    // _borderRadius = BorderRadius.circular(Random().nextInt(90).toDouble() + 10);
    _borderRadius = BorderRadius.vertical(
      top: Radius.circular(Random().nextInt(90).toDouble() + 10),
      bottom: Radius.circular(Random().nextInt(90).toDouble() + 10),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.play_circle_outline,
            size: 40,
          ),
          onPressed: () => onChangeShape()),
    );
  }
}

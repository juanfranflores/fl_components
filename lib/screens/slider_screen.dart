import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final double _minValue = 100;
  final double _maxValue = 500;
  double _sliderValue = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              min: _minValue,
              max: _maxValue,
              // divisions: 20,
              value: _sliderValue,
              // label: _sliderValue.round().toString(),
              onChanged: (value) {
                debugPrint(value.toString());
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://pbs.twimg.com/media/E1rZy0CXEAkofQc.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            )
          ],
        ),
      ),
    );
  }
}

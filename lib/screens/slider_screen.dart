import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final double _minValue = 100;
  final double _maxValue = 900;

  bool _sliderEnabeled = true;
  double _sliderValue = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Column(
        children: [
          Slider(
              min: _minValue,
              max: _maxValue,
              value: _sliderValue,
              onChanged: _sliderEnabeled
                  ? (value) {
                      debugPrint('slider value: ${value.toString()}');
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('tamaño modificable'),
              value: _sliderEnabeled,
              onChanged: (value) {
                _sliderEnabeled = value ?? true;
                debugPrint('slider enabeled value: ${value.toString()}');
                setState(() {});
              }),
          SwitchListTile.adaptive(
              title: const Text('tamaño modificable'),
              activeColor: AppTheme.primary,
              inactiveTrackColor: Colors.grey,
              value: _sliderEnabeled,
              onChanged: (value) {
                _sliderEnabeled = value;
                debugPrint('slider enabeled value: ${value.toString()}');
                setState(() {});
              }),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://pbs.twimg.com/media/E1rZy0CXEAkofQc.jpg'),
                fit: BoxFit.fitHeight,
                height: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

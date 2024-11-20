import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final int value;
  final Function(int) onChanged;

  ColorSlider({required this.label, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: $value',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 0),
          Slider(
            value: value.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.purple,
            onChanged: (double newValue) {
              onChanged(newValue.toInt());
            },
          ),
        ],
      ),
    );
  }
}
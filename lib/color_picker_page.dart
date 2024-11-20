import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_model.dart';
import 'color_slider.dart';

class ColorPickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ColorModel>(
              builder: (context, colorModel, child) => Container(
                width: 100,
                height: 100,
                color: colorModel.color,
              ),
            ),
            SizedBox(height: 80),
            Consumer<ColorModel>(
              builder: (context, colorModel, child) => Column(
                children: [
                  ColorSlider(
                    label: "Red",
                    value: colorModel.red,
                    onChanged: (value) => colorModel.setRed(value),
                  ),
                  ColorSlider(
                    label: "Green",
                    value: colorModel.green,
                    onChanged: (value) => colorModel.setGreen(value),
                  ),
                  ColorSlider(
                    label: "Blue",
                    value: colorModel.blue,
                    onChanged: (value) => colorModel.setBlue(value),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
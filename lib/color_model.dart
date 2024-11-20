import 'package:flutter/material.dart';

class ColorModel extends ChangeNotifier {
  int _red = 176;
  int _green = 135;
  int _blue = 199;

  int get red => _red;
  int get green => _green;
  int get blue => _blue;

  Color get color => Color.fromRGBO(_red, _green, _blue, 1.0);

  void setRed(int value) {
    _red = value;
    notifyListeners();
  }

  void setGreen(int value) {
    _green = value;
    notifyListeners();
  }

  void setBlue(int value) {
    _blue = value;
    notifyListeners();
  }
}
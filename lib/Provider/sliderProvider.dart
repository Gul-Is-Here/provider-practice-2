import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier {
  double value = 1.0;
  void get _value => value;
  void getValue(double val) {
    value = val;
    notifyListeners();
  }
}

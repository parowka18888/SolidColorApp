import 'dart:math';

import 'package:flutter/material.dart';

/// Class for defining color feature
class ColorController{

  static final Random _random = Random();
  static const double _opacity = 1.0;
  static const int _maxColors = 255;

  /// returns random RGB color
  static Color getRandomColor(){
    return Color.fromRGBO(
        _random.nextInt(_maxColors),
        _random.nextInt(_maxColors),
        _random.nextInt(_maxColors),
        _opacity
    );
  }

}

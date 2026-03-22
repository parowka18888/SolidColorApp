import 'dart:math';

import 'package:flutter/material.dart';

/// Class for defining color feature
class ColorController{

  static final Random _random = Random();
  static const double _opacity = 1.0;
  static const int _maxColors = 255;

  static Color _fontColor = getRandomColor();
  static Color _backgroundColor = getRandomColor();

  /// getter for font color
  static Color get fontColor => _fontColor;
  /// getter for background color
  static Color get backgroundColor => _backgroundColor;

  /// returns random RGB color
  static Color getRandomColor(){
    return Color.fromRGBO(
        _random.nextInt(_maxColors),
        _random.nextInt(_maxColors),
        _random.nextInt(_maxColors),
        _opacity
    );
  }

  /// sets new colors for variables
  static void setColors(){
    _fontColor = getRandomColor();
    _backgroundColor = getRandomColor();
  }

}

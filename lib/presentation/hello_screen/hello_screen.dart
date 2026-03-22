import 'package:flutter/material.dart';
import 'package:solidcolorapp/features/color_controller/color_controller.dart';

/// class for defining hello screen
class HelloScreen extends StatefulWidget {
  /// class constructor
  const HelloScreen({super.key});
  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

/// class for hello screen state
class _HelloScreenState extends State<HelloScreen> {
  ColorController colorController = ColorController();
  static const double _fontScale = 0.1;

  void _changeColor() => setState(ColorController.setColors);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: ColorController.backgroundColor,
        body: Center(
          child: Text(
            "Hello  there!",
            style: TextStyle(
              color: ColorController.fontColor,
              fontSize: MediaQuery.sizeOf(context).width * _fontScale,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

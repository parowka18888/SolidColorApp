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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1250),
        color: ColorController.backgroundColor,
        child: Center(
          child: AnimatedDefaultTextStyle(
            style: TextStyle(
              color: ColorController.fontColor,
              fontSize: MediaQuery.sizeOf(context).width * _fontScale,
              fontWeight: FontWeight.bold,
            ),
            duration: const Duration(milliseconds: 500),
            child: const Text("Hello  there!"),
          ),
        ),
      ),
    );
  }
}

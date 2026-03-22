import 'package:flutter/material.dart';
import 'package:solidcolorapp/features/color_controller/color_controller.dart';

class HelloScreen extends StatefulWidget{
  const HelloScreen({super.key});
  @override
  State<HelloScreen> createState() => _HelloScreen();
}

class _HelloScreen extends State<HelloScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: ColorController.getRandomColor(),
        body: Center(
          child: Text(
            "Hello  there!",
            style: TextStyle(
                color: ColorController.getRandomColor(),
                fontSize: 100,
                fontWeight: FontWeight.bold
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget{
  const HelloScreen({super.key});
  @override
  State<HelloScreen> createState() => _HelloScreen();
}

class _HelloScreen extends State<HelloScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: const Text(
            "Hello  there!",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 100,
                fontWeight: FontWeight.bold
            ),
          ),
        )
    );
  }
}

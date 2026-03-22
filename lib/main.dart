import 'package:flutter/material.dart';
import 'package:solidcolorapp/presentation/hello_screen/hello_screen.dart';

void main() {
  runApp(const Main());
}
/// main class for the application - it defines theme and home screen
class Main extends StatelessWidget {
  /// class constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HelloScreen(),
    );
  }
}

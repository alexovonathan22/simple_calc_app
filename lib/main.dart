import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_calc_app/Widgets/calculator.dart';

void main() async {
  // This async method locks the app in portrait mode.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Calculator(),
    );
  }
}
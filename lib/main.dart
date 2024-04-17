import 'package:flutter/material.dart';
import 'package:mywidgetapp/gradcontainer.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(Colors.deepOrange, Colors.deepPurple),
  )));
}

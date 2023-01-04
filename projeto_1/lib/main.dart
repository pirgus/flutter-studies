import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    child: Center(
      child: Text(
        'Hello, World!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30.0, color: Color.fromARGB(255, 255, 255, 255)),
      ),
    ),
  ));
}

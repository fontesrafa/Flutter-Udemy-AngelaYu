import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'I am Poor';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        appBar: AppBar(
          backgroundColor: Colors.cyan[600],
          title: const Text('I am Poor..'),
        ),
        body: const Center(
          child: Image(image: AssetImage('images/poor-01.jpg')),
        ),
      ),
    );
  }
}

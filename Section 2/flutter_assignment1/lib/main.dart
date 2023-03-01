import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_assignment1/app.dart';

void main() => runApp(const SimpleApp());

class SimpleApp extends StatefulWidget {
  const SimpleApp({super.key});

  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment 1'),
        ),
        body: const App(),
      ),
    );
  }
}

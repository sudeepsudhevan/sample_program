import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_program/screen_home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: ScreenHome(),
    );
  }
}

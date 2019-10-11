import 'package:flutter/material.dart';
import 'user_interface/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

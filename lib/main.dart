import 'package:flutter/material.dart';
import 'package:module_6_1/screen_1.dart';
import 'package:module_6_1/screen_2.dart';
import 'package:module_6_1/screen_3.dart';
import 'package:module_6_1/screen_4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Screen1(),
      //Screen2(),
      //Screen3(),
      //Screen4(),
    );
  }
}

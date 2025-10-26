import 'package:flutter/material.dart';
import 'package:flutter_all_applications/four/icon_page2.dart';
import 'package:flutter_all_applications/seven/button_types.dart';
import 'package:flutter_all_applications/seven/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonTypes(),
    );
  
  }
}



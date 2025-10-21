import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World!",
        style: TextStyle(
          backgroundColor: Colors.white,
          color: Colors.black,
          wordSpacing: 20,
          letterSpacing: 10,
        ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(child: Text("Hello body!",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        letterSpacing: 5,
        shadows: [
          Shadow(color: const Color.fromARGB(255, 117, 115, 115),
          offset: Offset(5, 0),
          blurRadius: 5)

        ],
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.dotted,
        decorationColor: Colors.amberAccent,
        decorationThickness: 5
      ),
      )),
    );
  }
}
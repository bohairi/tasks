import 'package:flutter/material.dart';

class Richtextclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Rich text example",
          style: TextStyle(backgroundColor: Colors.cyanAccent),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: RichText(text: TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(color: Colors.grey),
            children: [
              TextSpan(
                text: "sign up ",
                style: TextStyle(color: Colors.blueAccent)
              ),
              TextSpan(
                text: "batata",
                style: TextStyle(color: Colors.amber)
              )
            ]
          )),
        ),
    );
  }
}
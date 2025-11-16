import 'package:flutter/material.dart';

class NavigationScreen3 extends StatefulWidget{
  @override
  State<NavigationScreen3> createState() => _NavigationScreen3State();
}

class _NavigationScreen3State extends State<NavigationScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 234, 10),
        title: Center(
          child: Text('Screen Three',
          style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 30,
           color: Colors.white
          ),),
        ),
      ),
      body:Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed('routScreen1');
          // Navigator.of(context).pop();
        }, child: Text('Go to Screen one')),
      )
      );
    
  }
}
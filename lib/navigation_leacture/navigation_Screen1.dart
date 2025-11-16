import 'package:flutter/material.dart';
import 'package:flutter_all_applications/navigation_leacture/navigation_Screen2.dart';

class NavigationScreen1 extends StatefulWidget{
  @override
  State<NavigationScreen1> createState() => _NavigationScreen1State();
}

class _NavigationScreen1State extends State<NavigationScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(
          child: Text('Screen One',
          style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 30,
           color: Colors.white
          ),),
        ),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed('routScreen2');
           //Navigator.of(context).push(
          //  Navigator.of(context).pushReplacement(
          //   MaterialPageRoute(builder: (_) => NavigationScreen2())
          // );
        }, child: Text('Go to Screen two')),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NavigationScreen2 extends StatefulWidget{
  @override
  State<NavigationScreen2> createState() => _NavigationScreen2State();
}

class _NavigationScreen2State extends State<NavigationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 11, 247),
        title: Center(
          child: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).pushReplacementNamed('routScreen1');
              }, icon: Icon(Icons.arrow_back)),
              Text('Screen Two',
              style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 30,
               color: Colors.white
              ),),
            ],
          ),
        ),
      ),
      body:Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed('routScreen3');
          // Navigator.of(context).pop();
        }, child: Text('Go to Screen three')),
      )
      );
    
  }
}
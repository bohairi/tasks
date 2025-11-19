import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_all_applications/one/HomeScreen.dart';
import 'package:flutter_all_applications/task_burgar/Screens/utils/customFont.dart';

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Container(
          height: double.infinity,
          decoration: BoxDecoration(
            
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              Colors.red.shade200,
              Colors.red.shade300,
              Colors.red.shade400,
              Colors.red.shade500,
              Colors.red.shade600,
            ])
          ),
        ),
        Center(
          child: Text('Go Food',
          style: Customfont.textFont,
         ),
        ),
        
        Positioned(
          bottom: 0,
          child: Image.asset('assets/image/burger.png',
          height: 200,
          width: 200,
          fit: BoxFit.fill,),
        )
        ]
      ),
    );
  }
}
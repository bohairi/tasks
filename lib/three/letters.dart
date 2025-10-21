import 'package:flutter/material.dart';

class Letters extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                customContainer("A"),
                customContainer("B"),
                customContainer("C"),
                customContainer("D"),
              ],
            ),
            
            Row(
              children: [
                customContainer("E"),
                customContainer("F"),
                customContainer("G"),
                customContainer("H")
              ],
            ),
             Row(
              children: [
                customContainer("I"),
                customContainer("J"),
                customContainer("K"),
                customContainer("L"),
              ],
            ),
          ],
        ),
      )
    );
  }
  Widget customContainer(String st){
    return Container(
      color: Colors.amber,
      margin: EdgeInsets.all(2),
      width: 80,
      height: 80,
      
      child: Center(
        child: Text(st,
        
        style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
      ),
    );
  }
  }

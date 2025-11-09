import 'package:flutter/material.dart';

class StackClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      GridView.count(crossAxisCount: 2,
      children: [
        Stack(children:[
          customComtainer(),
          Positioned(
            right: 15,
            top: 15,
            child: Container(
              height: 40,
              width: 40,
              color: Colors.red,
            ),
          )
        ],),
        //alignment: Alignment.center)
        customComtainer(),
        customComtainer(),
        customComtainer(),
        customComtainer(),
        customComtainer(),
        customComtainer(),
        customComtainer(),

      ],)),
    );
  }
}
Widget customComtainer(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: Colors.grey,
    ),
  );
}
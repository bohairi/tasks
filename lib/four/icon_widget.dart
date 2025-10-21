import 'package:flutter/material.dart';

class IconWidgetClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text("hi from icon"),
                Icon(Icons.person,size: 40,
                color: Colors.amber,),
                Icon(IconData(0xf869,fontFamily: 'MaterialIcons'),
                size: 40,
                color: Colors.amber,)
              ],
            ),
          ),
        ),
    );
  }
}
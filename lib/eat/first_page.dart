import 'package:flutter/material.dart';
import 'package:flutter_all_applications/eat/custom_button.dart';

class FirstPage extends StatelessWidget{
FirstPage();

  @override
 
    List <Map<String,dynamic>> colors =[
    {
      'answer' : 'red', 'onPressed' : (){}
    },
    {
      'answer' : 'blue', 'onPressed' : (){}
    },
    {
      'answer' : 'black', 'onPressed' : (){}
    }
    ];
  Widget build(BuildContext context) {
  
    return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          Text("What is your fav color"),
          Column(
            children: colors.map((c)=> CustomButton(color: c) ).toList()
           
          )

        
        ],
      ),
    ),
    );
  }
}
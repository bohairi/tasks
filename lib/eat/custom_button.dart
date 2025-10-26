import 'package:flutter/material.dart';

// class CustomButtonClass extends StatelessWidget{
//    Map<String,dynamic> color;
//    CustomButtonClass({required this.color});
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: color['answer'], child: color['onPressed']);
// }}

class CustomButton extends StatelessWidget {
   Map<String,dynamic> color;
   CustomButton({required this.color});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:color['onPressed'] ,
      child: Text(color['answer']),
    );
  }
}
              
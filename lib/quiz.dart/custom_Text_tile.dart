import 'package:flutter/material.dart';

class CustomTextTile extends StatelessWidget{
  String titleText;
  String subtitleText;
  CustomTextTile({required this.titleText, required this.subtitleText});
  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: EdgeInsets.only(top: 50),
    width: 80, 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titleText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4),
        Text(
          subtitleText,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
  }
}
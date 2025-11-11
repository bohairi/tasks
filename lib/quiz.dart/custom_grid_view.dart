import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quiz.dart/custom_Text_tile.dart';

class CustomGridView extends StatelessWidget{
  IconData icon;
  Color color;
  CustomTextTile textWidget;
  CustomGridView({required this.icon,required this.color, required this.textWidget});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Transform.scale(
        scale: 0.8,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                color: const Color.fromARGB(255, 203, 207, 209),
                child: Icon(icon,
                color: color,),
                ),
                textWidget,
            ],
          ),
        ),
      ),
    );
  }
}
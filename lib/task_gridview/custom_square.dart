import 'package:flutter/material.dart';
import 'package:flutter_all_applications/task_gridview/model_square.dart';

class CustomSquare extends StatelessWidget{
  ModelSquare modelSquare;
  CustomSquare({required this.modelSquare});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 152, 0),
        borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(modelSquare.icon.icon,
            size: 45,),
            Text(modelSquare.name,
            style: TextStyle(
              fontSize: 25
            ),)
          ],
        ),
      ),
    );
  }
}
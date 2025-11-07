import 'package:flutter/material.dart';
import 'package:flutter_all_applications/task_gridview/custom_square.dart';
import 'package:flutter_all_applications/task_gridview/model_square.dart';

class TaskGridView extends StatelessWidget{
  List <ModelSquare> squares = [
    ModelSquare(icon: Icon(Icons.house), name: "Home"),
    ModelSquare(icon: Icon(Icons.contacts), name: "Contact"),
    ModelSquare(icon: Icon(Icons.map), name: "Map"),
    ModelSquare(icon: Icon(Icons.call), name: "Phone"),
    ModelSquare(icon: Icon(Icons.photo_camera), name: "Camera"),
    ModelSquare(icon: Icon(Icons.settings), name: "Setting"),
    ModelSquare(icon: Icon(Icons.photo_album), name: "Album"),
    ModelSquare(icon: Icon(Icons.wifi), name: "WiFi"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 150, 243),
        title: Text("Flutter GridView Demo",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemCount: squares.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index){
        return CustomSquare(modelSquare: squares[index]);
      }),
    );
  }

}
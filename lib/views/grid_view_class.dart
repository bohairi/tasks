import 'package:flutter/material.dart';

class GridViewClass extends StatelessWidget{
  List <Color> colors = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.brown,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.brown
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
           child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5), 
           itemCount: colors.length,
           itemBuilder: (context,index){
            return buttonFromContainer(context, colors[index]);
           })
        ),
      ),
    );
  }
  Widget buttonFromContainer(BuildContext context, Color c){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.height,
        color: c,
        child: Center(child: Text("Ahmad",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
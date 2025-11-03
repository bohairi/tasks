import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List <Color> colors = [
      Colors.pink,
      Colors.green,
      const Color.fromRGBO(33, 150, 243, 1),
      Colors.amber,
      Colors.pink,
      Colors.green,
      const Color.fromRGBO(33, 150, 243, 1),
      Colors.amber
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
         return buttonFromContainer(context, colors[index]);
        } ,)
      );
    
  }
  buttonFromContainer(BuildContext context, colors){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2 ,
        width: MediaQuery.of(context).size.width,
        color: colors,
        child: Center(child: Text("HI"),),
         ),
    );
  }
}
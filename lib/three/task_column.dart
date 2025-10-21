import 'package:flutter/material.dart';

class TaskColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text('Task Column',
        style: TextStyle(
          color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color : Colors.red,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(),
              Text("ahmad",
              style: TextStyle(
                fontWeight:FontWeight.bold ),),
              Text("mustafa",style: TextStyle(
                fontWeight:FontWeight.bold ),),
              Text("al-bohaire",style: TextStyle(
                fontWeight:FontWeight.bold ),)
            ],
        ),
      ),
    );
  }
}
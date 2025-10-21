import 'package:flutter/material.dart';
class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("What is your favorit color?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
              child: Column(
                children: [
              ElevatedButton(onPressed: (){}, child: Text("Red"),),
              ElevatedButton(onPressed: (){}, child: Text("Blue")),
              ElevatedButton(onPressed: (){}, child: Text("Green")),])
              ),
              ElevatedButton(onPressed: (){}, child: Text("Next")),
          
          
            ],
          ),
        ),
      )
    );
  }
}
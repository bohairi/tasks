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
              ElevatedButton(onPressed: (){}, child: Text("Red"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent
              ),),
              ElevatedButton(onPressed: (){}, child: Text("Blue"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent
              ),),
              ElevatedButton(onPressed: (){}, child: Text("Green"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent
              ),)
              ])
              ),
              ElevatedButton(onPressed: (){}, child: Text("Next",
              style: TextStyle(
                color: Colors.white
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 198, 226, 15),
                shape: CircleBorder()
              ),),
            ],
          ),
        ),
      )
    );
  }
}
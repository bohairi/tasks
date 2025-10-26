import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget{
  List <String> colors = [
      "red","blue","white","black","pink"
    ];
  String? slectedvalue = "red";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
              TextButton(onPressed:(){}, child: Text("Text Button")),
              TextButton.icon(onPressed:  (){}, label: Text("data"),icon: Icon(Icons.person),),//named const wich icon not required
              IconButton(onPressed:  (){}, icon: Icon(Icons.person)),
              IconButton.filled(onPressed:  (){}, icon: Icon(Icons.person)),//named constructor
              IconButton.outlined(onPressed:  (){}, icon: Icon(Icons.person)),
              OutlinedButton(onPressed:  (){}, child: Text("Outlined Button")),
              FloatingActionButton(onPressed:  (){}),

              DropdownButton(items: 
              colors.map((color) => DropdownMenuItem(child: Text(color),value: color,)) .toList(),
              value: slectedvalue,
               onChanged:  (newItem){
               //setstate??
              })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:  (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
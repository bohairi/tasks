import 'package:flutter/material.dart';

class ButtonTypes extends StatefulWidget{
  @override
  State<ButtonTypes> createState() => _ButtonTypesState();
}

class _ButtonTypesState extends State<ButtonTypes> {
  List <String> colors = [
      "red","blue","white","black","pink"
    ];

  String? slectedvalue = "red";
  String? intialvalue = "red";
  String? value;
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.person),
            iconColor: Colors.amber,
            iconSize: 50,
            color: Colors.blue,
            elevation: 1,
            menuPadding: EdgeInsets.all(20),
            offset: Offset(10, 40),
            onSelected: (value) => setState(() {
              print(intialvalue);
              intialvalue = value;
              print(intialvalue);
            }),
            //??
            onCanceled: () => print(intialvalue),
            onOpened: () => print("open"),
            //onSelected: (v) => print(v),
            itemBuilder: (context){
            return colors.map((c) => PopupMenuItem(child: Text(c),)).toList();
          }
          )
        ],
      ),
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
              /*
              TextButton(onPressed:(){}, child: Text("Text Button")),
              TextButton.icon(onPressed:  (){}, label: Text("data"),icon: Icon(Icons.person),),//named const wich icon not required
              IconButton(onPressed:  (){}, icon: Icon(Icons.person)),
              IconButton.filled(onPressed:  (){}, icon: Icon(Icons.person)),//named constructor
              IconButton.outlined(onPressed:  (){}, icon: Icon(Icons.person)),
              OutlinedButton(onPressed:  (){}, child: Text("Outlined Button")),
              */
              FloatingActionButton(onPressed:  (){}),

              DropdownButton(items: 
              colors.map((color) => DropdownMenuItem(child: Text(color),value: color,)) .toList(),
              value: slectedvalue,
              //??
               onChanged:  (newItem){
                setState(() {
                  slectedvalue = newItem;
                });
              }),
              RadioListTile(
                title: Text("rice"),
                value: "Rice", groupValue: value, onChanged: (newvalue){
                setState(() {
                  value = newvalue;
                });
              }),
              RadioListTile(
                title: Text("pasta"),
                value: "Pasta", groupValue: value, onChanged: (newvalue){
                setState(() {
                  value = newvalue;
                });
              }),
              RadioListTile(
                title: Text("sugar"),
                value: "Sugar", groupValue: value, onChanged: (newvalue){
                setState(() {
                  value = newvalue;
                });
              }),
              CheckboxListTile(
                title: Text("batata"),
                value: status, onChanged: (newvalue){
                setState(() {
                  newvalue = status;
                });
                //??
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
import 'package:flutter/material.dart';

class HomePageStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 110, 165, 209),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 79, 5, 119) ,
        title: Center(
          child: Text("Sign In",
          style: TextStyle(
            color: Colors.white
          ),),
        ),
      ),
      body: SafeArea(child: 
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Icon(Icons.person_2_sharp),
            Text("Shelton Cooper")]),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customCircle(Colors.deepPurple),
                customCircle(Colors.grey),
                customCircle(Colors.grey),
                customCircle(Colors.grey),
              ],
            ),
          ),
          Card(
              margin: EdgeInsets.only(top: 15),
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
              ),
              height:MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.5,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ),
                  itemCount: 9,
                   itemBuilder: (context,index){
                return customNumber(index+1);
              }),
            ),
          )
          ]
        ),
      )),
    );
  }
}
Widget customCircle(Color c){
  return Container(
    height: 20,
    width: 30,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: c
    ),
  );
}
Widget customNumber(int? data){
  return Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle
    ),
    height: 15,
    width: 15,
    child: Center(child: Text("$data",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 20
    ),)),
  );
}
import 'package:flutter/material.dart';

class DeliveryTask extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List <String> words = ["All","Catagory","Top","Recommended"];
    return Scaffold(
       body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 40,
                      //margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                                          color: const Color.fromARGB(60, 113, 112, 112),
                ),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.search,
                          color: Colors.deepOrangeAccent,),
                        ),
                        Text("Search"),
                      ],),
                    ),
                  Container(
                //margin: EdgeInsets.only(left: 150),
                padding: EdgeInsets.all(7),
                
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                                        color: const Color.fromARGB(60, 113, 112, 112),),
                child: Icon(Icons.notification_add,
                color: Colors.deepOrangeAccent,))
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("assets/deliver.jpg"))),
                  margin: EdgeInsets.symmetric(vertical: 20),) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for(int i=0;i < words.length;i++)
                      Container(child: Text(words[i],style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: const Color.fromARGB(60, 113, 112, 112),),
                      )
                         
                         ],
                  ) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3,
                            height: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(35)),
                            image: DecorationImage(image: AssetImage("assets/hijab.jpeg"))),
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("Hijab",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("5 JOR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              
                            ),),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3,
                            height: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(35)),
                            image: DecorationImage(image: AssetImage("assets/sweater.webp"))),
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("kids wool sweater",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("7 JOR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              
                            ),),
                          ),
                        ],
                      )
                    ],
                  )
              ],
            ),
          ),
        )
    );
  }
}
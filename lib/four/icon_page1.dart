import 'package:flutter/material.dart';

class IconPage1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6869e9),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sister",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(IconData(0xe043, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 150,),
                    Text("CALLING...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.call,
                          color: Colors.greenAccent,
                          size: 35,),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.call_end,
                          color: Colors.redAccent,
                          size: 35,),
                        ),
                      ]
                      
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                      decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(9)
                      ),
                      child: Text("Send Message",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
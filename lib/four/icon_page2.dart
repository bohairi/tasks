import 'package:flutter/material.dart';

class IconPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6869e9),
      body:SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sister",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35
                  ),),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Text("CALLING..",
                    style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 18,
                    fontWeight: FontWeight.w200
                    ),),
                ),
                  
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Icon(IconData(0xe043, fontFamily: 'MaterialIcons'),
                              size: 50,
                              color: Colors.white,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.add,
                                size: 40,
                                color: Color(0xFF6869e9),),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.mic_off,
                                size: 30,
                                color: Color(0xFF6869e9),),
                              ),
                          ],
                        ),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                        ),),
                        Text("Add Call",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                        ),),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Text("Mute",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),),
                        )
                      ],
                    ),
                      ],
                    ),
                    
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.pause,
                                size: 30,
                                color: Color(0xFF6869e9),),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.videocam,
                                size: 30,
                                color: Color(0xFF6869e9),),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.call_end_outlined,
                                size: 30,
                                color: Color(0xFF6869e9),),
                              ),
                          ],
                        ),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text("Hold",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Video Call",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          child: Text("Record",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),),
                        )
                      ],
                    ),
                      ],
                    ),
                    
                    
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 45),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Icon(Icons.volume_up,
                          size: 30,
                          color: Color(0xFFFFFFFF),),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.call_end,
                            size: 40,
                            color: Color(0xFFFFFFFF),),
                          ),
                          Icon(Icons.dialpad,
                          size: 30,
                          color: Color(0xFFFFFFFF),),
                      ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
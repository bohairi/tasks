 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';

class FirstPageQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                 height: MediaQuery.of(context).size.height  ,
                      color: Color.fromARGB(205, 2, 147, 106),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    costumIcon(Icons.arrow_back_ios_new),
                    costumIcon(Icons.settings),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                 bottom: 0,
                left: 0,
                right: 0,
                child: Container(            
                 width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 237, 237),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                                child: GridView.builder(
                                  //  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: 4, itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(height: 10, width: 10, color: Colors.amber,),
                                )),
                               
                         ),
              )
             
         
           
                         
           
         
              // Container(
              //   height: 70,
              //   width: 70
              //   decoration: BoxDecoration(
              //     color: Colors.amber,
              //     image: DecorationImage(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/028/542/774/non_2x/chinese-smiling-businessman-isolated-png.png',),fit: BoxFit.cover)
              //   ),
              // )
            ],
          ),
      ),
     
    );
  }
}

Widget costumIcon(IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Icon(icon)),
    ),
  );
}


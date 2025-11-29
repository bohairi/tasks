import 'package:flutter/material.dart';
import 'package:flutter_all_applications/text_field_task/custom_gridView_task.dart';
import 'package:flutter_all_applications/text_field_task/custom_widget_task.dart';
import 'package:flutter_all_applications/text_field_task/gradiant_color_task.dart';

class HomePageTask extends StatelessWidget {
  List <String> texts = ["All","Combos","Sliders","Settings","All","Combos","Sliders","Settings"];
  List <CustomGridviewTask> views = [
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
    CustomGridviewTask(title: "Hamburger", subtitle: "Double Chease", urlImaige: "assets/image/double_chease_burger.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0),
          title: Text("FoodGo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: 'ahmadFont'
          ),),
          subtitle: Text("Order your favourite food!"),
          trailing: Icon(Icons.person,
          size: 50,),
        ),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                     child: Material(
                      shadowColor: Colors.grey,
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                       child: TextField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.search,size: 30,),
                             hintText: "Search",
                             // labelText: "Search",
                             border: OutlineInputBorder(
                               borderSide: BorderSide.none
                             )
                           ),
                         ),
                     ),
                   ),
                  // Container(
                  //   height: 45,
                  //   width: MediaQuery.of(context).size.width * 0.7,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(20),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey,
                  //         blurRadius: 2,
                  //         spreadRadius: 1,
                  //         offset: Offset(0, 3)
                  //       )
                  //     ]
                  //   ),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       prefixIcon: Icon(Icons.search,size: 30,),
                  //       hintText: "Search",
                  //       // labelText: "Search",
                  //       border: OutlineInputBorder(
                  //         borderSide: BorderSide.none
                  //       )
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10)
          
                    ),
                    child: Icon(Icons.settings_input_antenna,
                    color: Colors.white,
                    size: 30,),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(),
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: texts.map((t) => CustomWidgetTask(widget_title: t)).toList()
                ),
              ),
              Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: views.length, itemBuilder: (context,index){
                  return views[index];
                }),
              )
            ],
          ),
        ),
        ),
      );
  }
}
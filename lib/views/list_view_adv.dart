import 'package:flutter/material.dart';
import 'package:flutter_all_applications/views/student_model.dart';


class ListViewAdv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List <StudentModel> students = [
    StudentModel(name: "ahmad", job: "Mobile developer"),
    StudentModel(name: "Ali", job: "Web developer"),
    StudentModel(name: "mustafa", job: "android developer"),
    StudentModel(name: "mohammad", job: "iphone developer"),
  ];
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(([
      ListTile(
          title: Text(students[0].name),
          subtitle: Text(students[0].job),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.navigate_next),
        )
      ])
      )
      ),

      
      // body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
      //   return ListTile(
      //     title: Text(students[index].name),
      //     subtitle: Text(students[index].job),
      //     leading: Icon(Icons.person),
      //     trailing: Icon(Icons.navigate_next),
      //   );
      // }, childCount: students.length
      // )
      // ),
    );
  }
}

// class ListViewAdv extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     List <StudentModel> students = [
//     StudentModel(name: "ahmad", job: "Mobile developer"),
//     StudentModel(name: "Ali", job: "Web developer"),
//     StudentModel(name: "mustafa", job: "android developer"),
//     StudentModel(name: "mohammad", job: "iphone developer"),
//   ];
//     return Scaffold(
//       body: SafeArea(child: 
//       ListView.separated(itemBuilder: (context,index){
//         return ListTile(
//           title: Text(students[index].name),
//           subtitle: Text(students[index].job),
//           leading: Icon(Icons.person),
//           trailing: Icon(Icons.navigate_next),
//         );
//       }, separatorBuilder: (context,index){
//         return Divider(
//           indent: 20,
//           endIndent: 50,
//           thickness: 5,
//         );
//       }
//       , itemCount: students.length)),
//     );
//   }
// }




// class ListViewAdv extends StatelessWidget{
//   List <String> category = ["All","Recommended","Best Seller","Custom"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 100,
//                 child: ListView.builder(
//                   //itemExtent: 100,
//                   prototypeItem: SizedBox(height: 100,width: 150,),//?
//                   scrollDirection: Axis.horizontal,
//                   itemCount: category.length,
//                   itemBuilder: (context,index) => customComtainer(category[index])),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   color: Colors.amberAccent,
//                   height: 150,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   color: Colors.amberAccent,
//                   height: 150,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   color: Colors.amberAccent,
//                   height: 150,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   color: Colors.amberAccent,
//                   height: 150,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   color: Colors.amberAccent,
//                   height: 150,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
    
//     }
// }
// Widget customComtainer(String data){
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Container(
//       child: Center(child: Text(data)),
//       color: Colors.grey,
//     ),
//   );
// }
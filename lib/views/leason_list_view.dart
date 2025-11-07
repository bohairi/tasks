// import 'package:flutter/material.dart';

// class LeasonListView extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             reverse: true,
//             //physics: AlwaysScrollableScrollPhysics(),
//             //physics: NeverScrollableScrollPhysics(),
//             physics: BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//                 buttonFromContainer(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget buttonFromContainer(BuildContext context){
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.2,
//         width: MediaQuery.of(context).size.height,
//         color: Colors.amberAccent,
//         child: Center(child: Text("Ahmad",
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold
//         ),)),
//       ),
//     );
//   }
// }
//----------------------------------------------------------------------------------------
import 'package:flutter/material.dart';

class LeasonListView extends StatelessWidget{
  List <Color> colors = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.brown,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.brown
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
           child: ListView.builder(
            itemCount: colors.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index){
            return buttonFromContainer(context, colors[index]);
           })

          // ListView(
          //   scrollDirection: Axis.vertical,
          //   physics: BouncingScrollPhysics(),
          //     children: colors.map((c){
          //       return buttonFromContainer(context, c);
          //     }).toList(),
          // ),
        ),
      ),
    );
  }
  Widget buttonFromContainer(BuildContext context, Color c){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.height,
        color: c,
        child: Center(child: Text("Ahmad",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
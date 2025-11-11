import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quiz.dart/custom_Text_tile.dart';
import 'package:flutter_all_applications/quiz.dart/custom_grid_view.dart';

class PageOneQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List <CustomGridView> squares = [ 
      CustomGridView(icon: Icons.star, color: Colors.amberAccent, textWidget: CustomTextTile(titleText: '51', subtitleText: 'Balance')),
      CustomGridView(icon: Icons.celebration, color: const Color.fromARGB(255, 164, 132, 15), textWidget: CustomTextTile(titleText: '1', subtitleText: 'Level')),
      CustomGridView(icon: Icons.directions_walk, color: const Color.fromARGB(255, 239, 53, 152), textWidget: CustomTextTile(titleText: 'Barefoot', subtitleText: 'Current League')),
      CustomGridView(icon: Icons.electric_bolt, color: Colors.amberAccent, textWidget: CustomTextTile(titleText: '30', subtitleText: 'Total XP')),
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
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
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 226, 226),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTextTile(titleText: 'Lucas Bennett', subtitleText: "Lucasbennit@gmail.com"),
                        CustomTextTile(titleText: '1.5K', subtitleText: "Followers"),
                        CustomTextTile(titleText: '0', subtitleText: "Following")
                      ],
                    ),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: 4, itemBuilder: (context,index){
                      return squares[index];
                    })
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.17,
              left: MediaQuery.of(context).size.width * 0.05,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://moverjetlogistics.com/wp-content/uploads/2023/08/Lucas-Bennett.png',
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.23,
              left: MediaQuery.of(context).size.width * 0.63,
              child: Transform.scale(
                scale: 0.65,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.39,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.redAccent),
                  ),
                  child: ListTile(
                    title: Text(
                      'Friends',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    leading: Icon(Icons.add, color: Colors.redAccent),
                  ),
                ),
              ),
            ),

            // costumText("Lucas Bennett", "Lucasbennit@gmail.com"),
            // costumText("1.5K", "Followers"),
            // costumText("0", "Following"),
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



import 'package:flutter/material.dart';

class ElavatedButtonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text("Elevated Button")),
            /*
            SizedBox(
              height: 20,
            ),*/
            ElevatedButton(onPressed: () => debugPrint("Elevated btn Clicked"),
             child: Padding(//padding is a widget and properity like we do in margin
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
               child: Text("Click"),
             ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              shape: LinearBorder()
            ),
            )
          ],
        ),
      ),
    );
  }
}
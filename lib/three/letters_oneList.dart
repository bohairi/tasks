import 'package:flutter/material.dart';

class Letters extends StatelessWidget {
  final List<String> letters = [
    "A", "B", "C", "D",
    "E", "F", "G", "H",
    "I", "J", "K", "L"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            for (int i = 0; i < letters.length; i += 4)
              Row(
                children: [
                 for (int j = i; j < i + 4 && j < letters.length; j++)
                    customContainer(letters[j]),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget customContainer(String st) {
    return Container(
      color: Colors.amber,
      width: 80,
      height: 80,
      margin: EdgeInsets.all(2), 
      child: Center(
        child: Text(
          st,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

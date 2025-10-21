import 'package:flutter/material.dart';
import 'package:flutter_all_applications/six/answer_model.dart';
import 'package:flutter_all_applications/six/answer_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    List answers = [
       AnswerModel(onPress: () => debugPrint("Pasta"), item: "Pasta"),
       AnswerModel(onPress: () => debugPrint("Rice"), item: "Rice"),
       AnswerModel(onPress: () => debugPrint("Mansaf"), item: "Mansaf"),

    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 132, 168),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text("What is your fav food?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
               Column(
                children: answers.map((a) => AnswerWidget(answerModel: a)).toList()
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

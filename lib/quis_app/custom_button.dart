import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quis_app/answer_model_quis.dart';
import 'package:flutter_all_applications/six/answer_model.dart';

// class CustomButtonClass extends StatelessWidget{
//    Map<String,dynamic> color;
//    CustomButtonClass({required this.color});
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: color['answer'], child: color['onPressed']);
// }}

class CustomButton extends StatelessWidget {
   AnswerModelQuis answerModel;
   VoidCallback counter;
   VoidCallback score;
   CustomButton({required this.answerModel, required this.counter, required this.score});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:(){
        answerModel.onPressed;
        counter();
        score();
      },
      child: Center(child: Text(answerModel.answer)),
    );
  }
}
              
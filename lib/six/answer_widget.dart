import 'package:flutter/material.dart';
import 'package:flutter_all_applications/six/answer_model.dart';

class AnswerWidget extends StatelessWidget{
  AnswerModel answerModel;
  AnswerWidget({required this.answerModel});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: answerModel.onPress, child: Text(answerModel.item)),
                  ));
    
  }
}
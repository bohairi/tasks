import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quis_app/answer_model_quis.dart';
import 'package:flutter_all_applications/six/answer_model.dart';

class QuestionModel {
  String question;
  List <AnswerModelQuis> listOfAnswers;
  QuestionModel({required this.question, required this.listOfAnswers});
}
import 'package:flutter/material.dart';

class AnswerModelQuis {
  String answer;
  VoidCallback onPressed;

  AnswerModelQuis({required this.answer, required this.onPressed});
}
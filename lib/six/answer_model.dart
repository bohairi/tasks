import 'package:flutter/animation.dart';

class AnswerModel {

  //method
  VoidCallback onPress;
  //answer
  String item;

  AnswerModel({required this.onPress, required this.item});
}

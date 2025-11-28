import 'package:flutter/material.dart';

class CustomBottunTask extends StatelessWidget {
  Widget buttonChild;
  CustomBottunTask({required this.buttonChild});

  @override
  Widget build(BuildContext context) {
    return Container( 
    decoration: BoxDecoration(
      color: Colors.deepOrange,
      borderRadius: BorderRadius.circular(5)
    ),
    child: buttonChild,);
  }
}

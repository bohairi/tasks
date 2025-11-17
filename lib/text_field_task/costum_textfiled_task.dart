import 'package:flutter/material.dart';

class CostumTextfiledTask extends StatelessWidget{
 String hinttext;
 IconData icon;
 CostumTextfiledTask({required this.hinttext, required this.icon });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if(value!.isEmpty){
            return 'the feild is empty!';
          }
          return null;
        },
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
            ),
    );
  }
}
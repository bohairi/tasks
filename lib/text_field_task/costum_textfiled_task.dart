import 'package:flutter/material.dart';

class CostumTextfiledTask extends StatelessWidget{
 String hinttext;
 Widget icon;
 String? Function(String?)? val;
 TextEditingController controller;
 bool isSecure = false;
 String lable;
 CostumTextfiledTask({required this.hinttext, required this.icon, required this.val,required this.controller,required this.isSecure, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        validator: val,
        obscureText: isSecure,
        // validator: (value) {
        //   if(value!.isEmpty){
        //     return 'the feild is empty!';
        //   }
        //   return null;
        // },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: icon,
        hintText: hinttext,
        labelText: lable,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
            ),
    );
  }
}
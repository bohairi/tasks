import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quiz.dart/page_one_quiz.dart';
import 'package:flutter_all_applications/text_field_task/costum_textfiled_task.dart';

class RegisterPageTask1 extends StatefulWidget {
  @override
  State<RegisterPageTask1> createState() => _RegisterPageTask1State();
}

class _RegisterPageTask1State extends State<RegisterPageTask1> {
  String buttonText = 'Register';
  bool hidefield = false;
  final _formkey = GlobalKey<FormState>();
  List<CostumTextfiledTask> editText = [
    CostumTextfiledTask(hinttext: "email or user name", icon: Icons.person),
    CostumTextfiledTask(hinttext: "password", icon: Icons.lock),
    CostumTextfiledTask(hinttext: "password again", icon: Icons.lock),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.vectorstock.com/i/500p/20/84/man-smiling-profile-vector-21372084.jpg',
                ),
                radius: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: editText.map((c) {
                      return (c == editText[2] && hidefield == true)? SizedBox() : c ;
                    }).toList()
                  ),
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    setState(() {
                      hidefield = true;
                      buttonText = 'Login';
                    });
                  }
                },
                child: Text(
                  buttonText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

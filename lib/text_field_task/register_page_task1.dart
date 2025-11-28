import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quiz.dart/page_one_quiz.dart';
import 'package:flutter_all_applications/text_field_task/costum_textfiled_task.dart';
import 'package:flutter_all_applications/text_field_task/home_page_task.dart';

class RegisterPageTask1 extends StatefulWidget {
  @override
  State<RegisterPageTask1> createState() => _RegisterPageTask1State();
}

class _RegisterPageTask1State extends State<RegisterPageTask1> {
  String buttonText = 'Register';
  bool hidefield = false;
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final twicePassword = TextEditingController();
  String check_email = "";
  String check_password = "";
  String check_twicePassword = "";
  late List<CostumTextfiledTask> editText ;
  bool isopen = false;

  @override
  Widget build(BuildContext context) {
    editText = [
    CostumTextfiledTask(hinttext: "email or user name", icon: SizedBox(child: Icon(Icons.person)),val: (email){
      if(!checkEmail(email!)) return 'the email not valid';
      return null;
    },controller: email,isSecure: false,lable: 'Email',),
    CostumTextfiledTask(hinttext: "password", icon:InkWell(
      onTap: () {setState(() {
        isopen = !isopen;
      });
      },
      child: isopen? Icon(Icons.visibility) : Icon(Icons.visibility_off)),val: (password){
      if(!checkPassword(password!)) return 'the password not valid';
      return null;
    },controller: password,isSecure: !isopen,lable: "Password",),
    CostumTextfiledTask(hinttext: "password again", icon:InkWell(
      onTap: () {
        setState(() {
          isopen = !isopen;
        });
      },
      child: isopen? Icon(Icons.visibility) : Icon(Icons.visibility_off)),val: (twicePassword){
      if(twicePassword != password.text) return 'this a different password';
      return null;
}
    ,controller: twicePassword,isSecure: !isopen,lable: "Confirm",),
  ];
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage:AssetImage("assets/hijab.jpeg"),radius: 50,
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
                  if(buttonText == 'Login'){
                    if(check_email == email.text && check_password == password.text){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomePageTask()));
                    }
                  };
                  if(_formkey.currentState!.validate()){
                    check_email = email.text;
                    check_password = password.text;
                    check_twicePassword = twicePassword.text;
                    setState(() {
                      hidefield = true;
                      buttonText = 'Login';
                      password.clear();
                      email.clear();
                    });
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("register field")));
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
 bool checkEmail(String email){
    String pattern = r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
    return RegExp(pattern).hasMatch(email);
  }

bool checkPassword(String password){
  return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(password);

}

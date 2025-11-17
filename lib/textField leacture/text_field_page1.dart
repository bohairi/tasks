import 'package:flutter/material.dart';
import 'package:flutter_all_applications/style/colors.dart';
class TextFieldPage1 extends StatefulWidget{
  @override
  State<TextFieldPage1> createState() => _TextFieldPage1State();
}

class _TextFieldPage1State extends State<TextFieldPage1> {
  @override
  Widget build(BuildContext context) {
    String? input;
    TextEditingController control = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgAppbarColor,
        title: Center(child: Text('Text Field',
        style: TextStyle(
          color: textColor
        ),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: control,
              onChanged: (value) {
                setState(() {
                  input = value;
                });              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 4,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  gapPadding: 8
                ),
                label: Text('email'),
                hintText: 'name@gmail.com',
                counter: Text('1/3'),
                // errorBorder: OutlineInputBorder(),
                // errorText: 'error',
                filled: true,
                fillColor: Colors.orange[100],
                helper: Text('write email'),
                prefixIcon: Icon(Icons.email),
                icon: Icon(Icons.home),
                suffixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 8,),
            Text('$input'),
            Text('${control.text}')
            //       TextField(
            // )
          ],
        ),
      ),
    );
  }
}
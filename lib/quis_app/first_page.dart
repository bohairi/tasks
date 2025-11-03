import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quis_app/answer_model_quis.dart';
import 'package:flutter_all_applications/quis_app/custom_button.dart';
import 'package:flutter_all_applications/quis_app/question_model.dart';
import 'package:flutter_all_applications/six/answer_model.dart';

class FirstPage extends StatefulWidget{
FirstPage();

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
    int counter = 0;
    int score = 0;
    List <QuestionModel> questions = [
      QuestionModel(question: "What is your fav color ?",
       listOfAnswers: [
        AnswerModelQuis(answer: "red", onPressed: (){}), 
        AnswerModelQuis(answer: "blue", onPressed: (){}),
        AnswerModelQuis(answer: "green", onPressed: (){}),
       ]
      ),
      QuestionModel(question: "What's your fav country ?",
       listOfAnswers: [
        AnswerModelQuis(answer: "Jordan", onPressed: (){}), 
        AnswerModelQuis(answer: "Syria", onPressed: (){}),
        AnswerModelQuis(answer: "Qatar", onPressed: (){}),
       ]
      ),
       QuestionModel(question: "What is your fav car ?",
       listOfAnswers: [
        AnswerModelQuis(answer: "BMW", onPressed: (){}), 
        AnswerModelQuis(answer: "TYOTA", onPressed: (){}),
        AnswerModelQuis(answer: "CAMRY", onPressed: (){}),
       ]
      ),
       QuestionModel(question: "What is your fav food ?",
       listOfAnswers: [
        AnswerModelQuis(answer: "mansaf", onPressed: (){}), 
        AnswerModelQuis(answer: "dwaly", onPressed: (){}),
        AnswerModelQuis(answer: "makmoura", onPressed: (){}),
       ]
      ),
       
     
    ];

  
    // {
  Widget build(BuildContext context) {
  int netscore = questions.length * 5;
  bool endOfQuis = netscore < score;
    return Scaffold(
      backgroundColor: Color(0xCD232c42),
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(205, 193, 202, 225),
      title: Text("Quiz App",
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      ),
    ),
    body: SafeArea(
      child: Center(
        child: endOfQuis ? Card(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            color: Color(0xCD232c42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.celebration,
                size: 80,
                color: Colors.amber,),
                Text("Congratolations",
                style: TextStyle(
                  color: Color(0xCDccdce7),
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),),
                Text("Your Score is : ${score-1}",
                style: TextStyle(color: Color(0xCDccdce7),),),
                 SizedBox(height: 90,),
                  TextButton(onPressed: (){
                    setState(() {
                      score = 0;
                      counter = 0;
                    });
                  }, child: Text("Reset Quiz",
                  style: TextStyle(color: Color(0xCDccdce7),),))
                
              ],
            ),
          ),
        ) :
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(questions[counter].question,
              style: TextStyle(
                color: Color(0xCDccdce7),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              Container(
                height: MediaQuery.of(context).size.height *0.28,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: questions[counter].listOfAnswers.map((q)=> 
                  CustomButton(answerModel: q, counter: (){
                    setState(() {
                      if (counter != questions.length -1){
                      counter++;
                    }
                    });
                  },
                  score: () => setState(() {
                    if (score != netscore){
                    score += 5;}
                  }),) ).toList()
                 
                ),
              ),
              SizedBox(height: 30,),
              Text("Score : $score",
              style: TextStyle(
                color: Color(0xCDccdce7),
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),), 
              SizedBox(height: 5,),
              TextButton(onPressed: (){
                setState(() {
                  if(score == netscore){
                  score++;}
                });
              }, child: Text("end of quiz",
              style: TextStyle(
                color: Color(0xCDccdce7),
              ),)),
              SizedBox(height: 90,),
              TextButton(onPressed: (){
                setState(() {
                  score = 0;
                  counter = 0;
                });
              }, child: Text("Reset Quiz",
              style: TextStyle(color: Color(0xCDccdce7),),))
            
            ],
                   ),
         ),
      ),
    ),
    );
  }
}
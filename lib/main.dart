import 'package:flutter/material.dart';
import 'package:flutter_all_applications/navigation_leacture/navigation_Screen1.dart';
import 'package:flutter_all_applications/navigation_leacture/navigation_Screen2.dart';
import 'package:flutter_all_applications/navigation_leacture/navigation_Screen3.dart';
import 'package:flutter_all_applications/quis_app/first_page.dart';
import 'package:flutter_all_applications/four/icon_page2.dart';
import 'package:flutter_all_applications/quiz.dart/first_page_quiz.dart';
import 'package:flutter_all_applications/quiz.dart/page_one_quiz.dart';
import 'package:flutter_all_applications/seven/button_types.dart';
import 'package:flutter_all_applications/seven/page1.dart';
import 'package:flutter_all_applications/six/home_page.dart';
import 'package:flutter_all_applications/stack_UI_task/home_page_stack.dart';
import 'package:flutter_all_applications/task_burgar/Screens/utils/splash.dart';
import 'package:flutter_all_applications/textField%20leacture/text_field_page1.dart';
import 'package:flutter_all_applications/text_field_task/home_page_task.dart';
import 'package:flutter_all_applications/text_field_task/register_page_task1.dart';
import 'package:flutter_all_applications/views/grid_view_adv.dart';
import 'package:flutter_all_applications/views/grid_view_class.dart';
import 'package:flutter_all_applications/views/leason_list_view.dart';
import 'package:flutter_all_applications/views/list_view.dart';
import 'package:flutter_all_applications/task_gridview/task_grid_view.dart';
import 'package:flutter_all_applications/views/list_view_adv.dart';
import 'package:flutter_all_applications/views/stack_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPageTask1(),
     // home: RegisterPageTask1(),
      routes: {
        'routScreen2' : (context) => NavigationScreen2(),
        'routScreen1' : (context) => NavigationScreen1(),
        'routScreen3' : (context) => NavigationScreen3()
      },
    );
  
  }
}





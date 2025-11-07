import 'package:flutter/material.dart';
import 'package:flutter_all_applications/quis_app/first_page.dart';
import 'package:flutter_all_applications/four/icon_page2.dart';
import 'package:flutter_all_applications/seven/button_types.dart';
import 'package:flutter_all_applications/seven/page1.dart';
import 'package:flutter_all_applications/views/grid_view_class.dart';
import 'package:flutter_all_applications/views/leason_list_view.dart';
import 'package:flutter_all_applications/views/list_view.dart';
import 'package:flutter_all_applications/task_gridview/task_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskGridView(),
    );
  
  }
}



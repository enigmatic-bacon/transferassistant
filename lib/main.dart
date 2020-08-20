import 'package:flutter/material.dart';
import 'helloPage.dart';
import 'collegeListPage.dart';
import 'taskPage.dart';

void main() => runApp(MyApp());

// This widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HelloPage(),
        '/first': (context) => CollegeListPage(),
        '/second': (context) => TaskPage(),
      },
    );
  }
}

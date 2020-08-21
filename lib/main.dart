import 'package:flutter/material.dart';
import 'collegeListPage.dart';
import 'helloPage.dart';
import 'taskPage.dart';
import 'constants.dart';

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
      theme: ThemeData.light().copyWith(
        primaryColor: kThemePrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

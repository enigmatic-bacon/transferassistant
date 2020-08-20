import 'package:flutter/material.dart';
import 'hello_page.dart';

void main() {
  runApp(MyApp());
}

// This widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Transfer Assistant';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

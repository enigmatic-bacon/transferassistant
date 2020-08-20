import 'package:flutter/material.dart';

class CollegeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text('go to taskPage'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('go back to helloPage'),
          ),
        ],
      ),
    );
  }
}

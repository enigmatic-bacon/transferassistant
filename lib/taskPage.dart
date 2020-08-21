import 'package:flutter/material.dart';
import 'package:transferapp/college.dart';

class TaskPage extends StatelessWidget {
  final College college;

  TaskPage({this.college});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'college name',
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('go back to collegeListPage'),
          ),
        ],
      ),
    );
  }
}

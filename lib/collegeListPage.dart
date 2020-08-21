import 'package:flutter/material.dart';
import 'collegeCard.dart';

class CollegeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'College List',
              style: TextStyle(fontSize: 40.0),
            ),
            Row(
              children: [
                CollegeCard(
                  color: Colors.green,
                  collegeName: 'Taiwan University',
                ),
                CollegeCard(
                  color: Colors.deepPurple,
                  collegeName: 'Taiwan University',
                ),
              ],
            ),
            Row(
              children: [
                CollegeCard(
                  color: Colors.orange,
                  collegeName: 'Taiwan University',
                ),
                CollegeCard(
                  color: Colors.pink,
                  collegeName: 'Taiwan University',
                ),
              ],
            ),
            // FlatButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/second');
            //   },
            //   child: Text('go to taskPage'),
            // ),
            // FlatButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: Text('go back to helloPage'),
            // ),
          ],
        ),
      ),
    );
  }
}

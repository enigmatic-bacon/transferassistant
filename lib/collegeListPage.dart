import 'package:flutter/material.dart';
import 'collegeCard.dart';
import 'college.dart';

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
                  college:
                      College(name: 'Taiwan University', deadline: 'Oct 1st'),
                  onTap: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
                CollegeCard(
                  color: Colors.deepPurple,
                  college:
                      College(name: 'Tibet University', deadline: 'Oct 1st'),
                  onTap: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
              ],
            ),
            Row(
              children: [
                CollegeCard(
                  color: Colors.orange,
                  college:
                      College(name: 'Thailand University', deadline: 'Oct 1st'),
                ),
                CollegeCard(
                  color: Colors.pink,
                  college:
                      College(name: 'Texas University', deadline: 'Oct 1st'),
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

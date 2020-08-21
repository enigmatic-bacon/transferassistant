import 'package:flutter/material.dart';

class CollegeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20.0, color: Colors.red),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hello Me!\n',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: 'To which college are you being accepted to today?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
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
      ),
    );
  }
}

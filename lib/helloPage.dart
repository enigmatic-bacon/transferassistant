import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'backEnd/universityList.dart';

class HelloPage extends StatefulWidget {
  HelloPage({Key key}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String dropdownValue = 'WyoTech';

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
                Navigator.pushNamed(context, '/first');
              },
              child: Text('Go to College List Page'),
            )
          ],
        ),
      ),
    );
  }
}

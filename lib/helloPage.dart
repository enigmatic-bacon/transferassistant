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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // DropdownButton<String>(
          //   value: dropdownValue,
          //   icon: Icon(Icons.cake),
          //   iconSize: 24,
          //   elevation: 16,
          //   style: TextStyle(color: Colors.deepOrange),
          //   underline: Container(
          //     height: 2,
          //     color: Colors.deepOrangeAccent,
          //   ),
          //   onChanged: (String newValue) {
          //     setState(() {
          //       dropdownValue = newValue;
          //     });
          //   },
          //   items: getUniversityList()
          //       .map<DropdownMenuItem<String>>((String value) {
          //     return DropdownMenuItem<String>(
          //       value: value,
          //       child: Text(value),
          //     );
          //   }).toList(),
          // ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            child: Text('Go to College List Page'),
          )
        ],
      ),
    );
  }
}

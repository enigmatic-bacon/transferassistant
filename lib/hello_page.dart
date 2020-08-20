import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'backEnd/universityList.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'WyoTech';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.cake),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepOrange),
      underline: Container(
        height: 2,
        color: Colors.deepOrangeAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: getUniversityList().map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

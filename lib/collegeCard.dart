import 'package:flutter/material.dart';
import 'constants.dart';

class CollegeCard extends StatelessWidget {
  final Color color;
  final String collegeName;
  final Function onTap;

  CollegeCard({@required this.color, @required this.collegeName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          collegeName,
          style: kCollegeNameText,
        ),
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(15.0),
        height: 150.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

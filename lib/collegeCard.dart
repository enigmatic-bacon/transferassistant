import 'package:flutter/material.dart';
import 'constants.dart';
import 'college.dart';

class CollegeCard extends StatelessWidget {
  final Color color;
  final College college;
  final Function onTap;

  CollegeCard({@required this.color, @required this.college, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Text(
            college.getName(),
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
      ),
    );
  }
}

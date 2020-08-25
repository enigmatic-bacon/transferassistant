import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

class HelloPage extends StatefulWidget {
  HelloPage({Key key}) : super(key: key);
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  SimpleAutoCompleteTextField textField;
  GlobalKey<AutoCompleteTextFieldState<String>> textFieldKey = new GlobalKey();
  List<String> added = [];
  String currentText = "";
  List<String> suggestions = [
    "Apple",
    "Armidillo",
    "Actual",
    "Actuary",
    "America",
    "Argentina",
    "Australia",
    "Antarctica",
    "Blueberry",
    "Cheese",
    "Danish",
    "Eclair",
    "Fudge",
    "Granola",
    "Hazelnut",
    "Ice Cream",
    "Jely",
    "Kiwi Fruit",
    "Lamb",
    "Macadamia",
    "Nachos",
    "Oatmeal",
    "Palm Oil",
    "Quail",
    "Rabbit",
    "Salad",
    "T-Bone Steak",
    "Urid Dal",
    "Vanilla",
    "Waffles",
    "Yam",
    "Zest"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
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
                      text: 'Today I want to be accepted to: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SimpleAutoCompleteTextField(
                key: textFieldKey,
                controller: TextEditingController(text: null),
                suggestions: suggestions,
                textChanged: (text) => currentText = text,
                textSubmitted: (text) {
                  setState(() {
                    if (text.length != 0) {
                      suggestions.remove(text);
                      added.add(text);
                      print(added);
                    }
                  });
                },
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:covid_kavach_india/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SymptomPage2 extends StatefulWidget {
  @override
  _SymptomPage2State createState() => _SymptomPage2State();
}

class _SymptomPage2State extends State<SymptomPage2> {
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      backgroundColor: kMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          expanded(
              widget: Expanded(
                child: Container(
                  decoration: kBoxDecoration2,
                ),
                flex: 1,
              ),
              flex: 2,
              string: "2/3"),
          Expanded(
            flex: 6,
            child: Container(
              decoration: kMainBoxDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      child: Text(
                          'Covid 19 can affect the elderly or the very young more seriously than others.\nHow old are you?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                        backgroundColor: kMainColor,
                        child: Icon(FontAwesomeIcons.minus),
                      ),
                      Text(
                        '$age',
                        style: TextStyle(
                            color: kMainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 60),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                        backgroundColor: kMainColor,
                        child: Icon(FontAwesomeIcons.plus),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      container(
                          textStyle: kAppBarTextStyle,
                          boxDecoration: kBoxDecoration3,
                          string: "Next",
                          function: () {
                            Navigator.pushNamed(context, kSymptomPage3);
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

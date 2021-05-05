import 'package:flutter/material.dart';
import 'package:covid_kavach_india/const.dart';
import 'package:flutter/widgets.dart';

class SymptomPage extends StatefulWidget {
  @override
  _SymptomPageState createState() => _SymptomPageState();
}

class _SymptomPageState extends State<SymptomPage> {
  Decoration decoration1 = kBoxDecoration2;
  Decoration decoration2 = kBoxDecoration2;
  Decoration decoration3 = kBoxDecoration2;
  Decoration decoration4 = kBoxDecoration2;
  Decoration decoration5 = kBoxDecoration2;

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
                flex: 2,
              ),
              flex: 1,
              string: "1/3"),
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
                          'Check all symptoms you have experienced in the past 2 weeks: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration1,
                              string: "Fever",
                              function: () {
                                if (decoration1 == kBoxDecoration2) {
                                  setState(() {
                                    decoration1 = kBoxDecoration3;
                                  });
                                } else {
                                  setState(() {
                                    decoration1 = kBoxDecoration2;
                                    decoration5 = kBoxDecoration2;
                                  });
                                }
                              }),
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration2,
                              string: "Dry Cough",
                              function: () {
                                if (decoration2 == kBoxDecoration2) {
                                  setState(() {
                                    decoration2 = kBoxDecoration3;
                                    decoration5 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration2 = kBoxDecoration2;
                                  });
                                }
                              }),
                        ],
                      ),
                      container(
                          textStyle: kAppBarTextStyle,
                          boxDecoration: decoration3,
                          string: "Shortness of Breath",
                          function: () {
                            if (decoration3 == kBoxDecoration2) {
                              setState(() {
                                decoration3 = kBoxDecoration3;
                                decoration5 = kBoxDecoration2;
                              });
                            } else {
                              setState(() {
                                decoration3 = kBoxDecoration2;
                              });
                            }
                          }),
                      Row(
                        children: [
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration4,
                              string: "Fatigue",
                              function: () {
                                if (decoration4 == kBoxDecoration2) {
                                  setState(() {
                                    decoration4 = kBoxDecoration3;
                                    decoration5 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration4 = kBoxDecoration2;
                                  });
                                }
                              }),
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration5,
                              string: "None",
                              function: () {
                                if (decoration5 == kBoxDecoration2) {
                                  setState(() {
                                    decoration5 = kBoxDecoration3;
                                    decoration1 = kBoxDecoration2;
                                    decoration2 = kBoxDecoration2;
                                    decoration3 = kBoxDecoration2;
                                    decoration4 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration5 = kBoxDecoration2;
                                  });
                                }
                              })
                        ],
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
                            Navigator.pushNamed(context, kSymptomPage2);
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

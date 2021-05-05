import 'package:flutter/material.dart';
import 'package:covid_kavach_india/const.dart';

class SymptomPage3 extends StatefulWidget {
  @override
  _SymptomPage3State createState() => _SymptomPage3State();
}

class _SymptomPage3State extends State<SymptomPage3> {
  Decoration decoration1 = kBoxDecoration2;
  Decoration decoration2 = kBoxDecoration2;
  Decoration decoration3 = kBoxDecoration2;
  Decoration decoration4 = kBoxDecoration2;
  Decoration decoration5 = kBoxDecoration2;
  Decoration decoration6 = kBoxDecoration2;
  Decoration decoration7 = kBoxDecoration2;
  Decoration decoration8 = kBoxDecoration2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      backgroundColor: kMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          expanded(flex: 1, string: "3/3", widget: Text('')),
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
                          'Have you been diagnosed with any of following?',
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
                              string: "Hypertension",
                              function: () {
                                if (decoration1 == kBoxDecoration2) {
                                  setState(() {
                                    decoration1 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration1 = kBoxDecoration2;
                                  });
                                }
                              }),
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration2,
                              string: "Asthma",
                              function: () {
                                if (decoration2 == kBoxDecoration2) {
                                  setState(() {
                                    decoration2 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration2 = kBoxDecoration2;
                                  });
                                }
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration3,
                              string: "Diabetes",
                              function: () {
                                if (decoration3 == kBoxDecoration2) {
                                  setState(() {
                                    decoration3 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration3 = kBoxDecoration2;
                                  });
                                }
                              }),
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration4,
                              string: "Heart Disease",
                              function: () {
                                if (decoration4 == kBoxDecoration2) {
                                  setState(() {
                                    decoration4 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration4 = kBoxDecoration2;
                                  });
                                }
                              })
                        ],
                      ),
                      Row(
                        children: [
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration5,
                              string: "Lung Disease",
                              function: () {
                                if (decoration5 == kBoxDecoration2) {
                                  setState(() {
                                    decoration5 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration5 = kBoxDecoration2;
                                  });
                                }
                              }),
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration6,
                              string: "Obesity",
                              function: () {
                                if (decoration6 == kBoxDecoration2) {
                                  setState(() {
                                    decoration6 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration6 = kBoxDecoration2;
                                  });
                                }
                              })
                        ],
                      ),
                      Row(
                        children: [
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration7,
                              string: "History of Smoking",
                              function: () {
                                if (decoration7 == kBoxDecoration2) {
                                  setState(() {
                                    decoration7 = kBoxDecoration3;
                                    decoration8 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration7 = kBoxDecoration2;
                                  });
                                }
                              }),
                          container(
                              textStyle: kAppBarTextStyle,
                              boxDecoration: decoration8,
                              string: "None",
                              function: () {
                                if (decoration8 == kBoxDecoration2) {
                                  setState(() {
                                    decoration8 = kBoxDecoration3;
                                    decoration1 = kBoxDecoration2;
                                    decoration2 = kBoxDecoration2;
                                    decoration3 = kBoxDecoration2;
                                    decoration4 = kBoxDecoration2;
                                    decoration5 = kBoxDecoration2;
                                    decoration6 = kBoxDecoration2;
                                    decoration7 = kBoxDecoration2;
                                  });
                                } else {
                                  setState(() {
                                    decoration8 = kBoxDecoration2;
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
                            Navigator.pushNamed(context, kSymptomPage4);
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

// class SymptomPage3 extends StatefulWidget {
//   @override
//   _SymptomPage3State createState() => _SymptomPage3State();
// }
//
// class _SymptomPage3State extends State<SymptomPage3> {
//   Color color1 = Colors.grey;
//   Color color2 = Colors.grey;
//   Color color3 = Colors.grey;
//   Color color4 = Colors.grey;
//   Color color5 = Colors.grey;
//   Color color6 = Colors.grey;
//   Color color7 = Colors.grey;
//   Color color8 = Colors.grey;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Color(0xFF2A7A83)),
//       body: Container(
//         color: Color(0xFF2A7A83),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     // crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Symptom Check',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 35,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             height: 10,
//                             margin: EdgeInsets.only(
//                                 left: 15, right: 15, bottom: 10),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.grey,
//                             ),
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 16),
//                             child: Text(
//                               "3/3",
//                               style:
//                                   TextStyle(color: Colors.grey, fontSize: 17),
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 15, vertical: 30),
//                         child: Text(
//                           'Have you been diagnosed with any of following?',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 30),
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color1 == Colors.grey) {
//                                       color1 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color1 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color1,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'Hypertension',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color2 == Colors.grey) {
//                                       color2 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color2 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color2,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'Asthma',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color3 == Colors.grey) {
//                                       color3 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color3 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color3,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'Diabetes',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color4 == Colors.grey) {
//                                       color4 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color4 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color4,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'Heart Disease',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color5 == Colors.grey) {
//                                       color5 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color5 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color5,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'Lung Disease',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color6 == Colors.grey) {
//                                       color6 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color6 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color6,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'Obesity',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color7 == Colors.grey) {
//                                       color7 = Color(0xFF2A7A83);
//                                       color8 = Colors.grey;
//                                     } else {
//                                       color7 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color7,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'History of Smoking',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (color8 == Colors.grey) {
//                                       color8 = Color(0xFF2A7A83);
//                                       color1 = Colors.grey;
//                                       color2 = Colors.grey;
//                                       color3 = Colors.grey;
//                                       color4 = Colors.grey;
//                                       color5 = Colors.grey;
//                                       color6 = Colors.grey;
//                                       color7 = Colors.grey;
//                                     } else {
//                                       color8 = Colors.grey;
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                       left: 15, right: 15, bottom: 5),
//                                   padding: EdgeInsets.all(15),
//                                   decoration: BoxDecoration(
//                                     color: color8,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Text(
//                                     'None',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, "/symptomPage4");
//                             },
//                             child: Container(
//                               margin: EdgeInsets.only(
//                                   left: 15, right: 15, bottom: 5),
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 45, vertical: 20),
//                               decoration: BoxDecoration(
//                                 color: Color(0xFF2A7A83),
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               child: Text(
//                                 'Next',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20,
//                                     color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

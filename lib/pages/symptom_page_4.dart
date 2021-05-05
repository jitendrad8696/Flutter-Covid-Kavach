import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_kavach_india/const.dart';

class SymptomPage4 extends StatefulWidget {
  @override
  _SymptomPage4State createState() => _SymptomPage4State();
}

class _SymptomPage4State extends State<SymptomPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      backgroundColor: kMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                    child: Image.asset(kCoronaImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Risk Level',
                          style: kTotalCasesTextTextStyle,
                        ),
                        Text(
                          'Based on Common\nSymptoms',
                          textAlign: TextAlign.center,
                          style: kSymptomTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: kMainBoxDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      decoration: kBoxDecoration3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Image.asset(kMaskImage),
                          ),
                          Text(
                            'Wear a Mask\nProperly.',
                            textAlign: TextAlign.center,
                            style: kAppBarTextStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      decoration: kBoxDecoration3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Image.asset(kHandWashImage),
                          ),
                          Text(
                            'Wash Hands\nProperly.',
                            textAlign: TextAlign.center,
                            style: kAppBarTextStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      decoration: kBoxDecoration3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Image.asset(kDoctorImage),
                          ),
                          Text(
                            'Use Symptom\nChecker in\ndaily basis.',
                            textAlign: TextAlign.center,
                            style: kAppBarTextStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      container(
                          textStyle: kAppBarTextStyle,
                          boxDecoration: kBoxDecoration3,
                          string: "Close",
                          function: () {
                            Navigator.popAndPushNamed(context, kMainPage);
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

// class SymptomPage4 extends StatefulWidget {
//   @override
//   _SymptomPage4State createState() => _SymptomPage4State();
// }
//
// class _SymptomPage4State extends State<SymptomPage4> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
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
//                       Icon(
//                         Icons.warning_amber_outlined,
//                         color: Colors.white,
//                         size: 60,
//                       ),
//                       Text(
//                         'Medium Risk',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 35,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Based on common symptoms',
//                         style: TextStyle(color: Colors.white, fontSize: 20),
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
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           margin: EdgeInsets.only(
//                               top: 15, left: 10, right: 10, bottom: 5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Colors.blue.shade900,
//                           ),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 10, horizontal: 3),
//                                 child: Image.asset('images/wear_mask.png'),
//                               ),
//                               Text(
//                                 'Wear A Mask Properly',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           margin: EdgeInsets.only(
//                               top: 15, left: 10, right: 10, bottom: 5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Colors.blue.shade900,
//                           ),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 10, horizontal: 3),
//                                 child: Image.asset('images/wash_hands.png'),
//                               ),
//                               Text(
//                                 'Wash Hands Properly',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           margin: EdgeInsets.only(
//                               top: 15, left: 10, right: 10, bottom: 5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Color(0xFF2A7A83),
//                           ),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 10, horizontal: 3),
//                                 child: Image.asset('images/doctor.png'),
//                               ),
//                               Text(
//                                 'Maintain a safe distance.\nUse Symptom Checker\nin daily basis.',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.popAndPushNamed(context, "/");
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
//                                 'Close',
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

import 'package:covid_kavach_india/const.dart';
import 'package:covid_kavach_india/pages/about_page.dart';
import 'package:covid_kavach_india/pages/main_page.dart';
import 'package:covid_kavach_india/pages/symptom_page.dart';
import 'package:covid_kavach_india/pages/symptom_page_2.dart';
import 'package:covid_kavach_india/pages/symptom_page_3.dart';
import 'package:covid_kavach_india/pages/symptom_page_4.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        kMainPage: (context) => MainPage(),
        kAboutPage: (context) => AboutPage(),
        kSymptomPage: (context) => SymptomPage(),
        kSymptomPage2: (context) => SymptomPage2(),
        kSymptomPage3: (context) => SymptomPage3(),
        kSymptomPage4: (context) => SymptomPage4()
      },
      initialRoute: kMainPage,
    );
  }
}

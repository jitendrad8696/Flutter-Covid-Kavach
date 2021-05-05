import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kMainPage = "/";
const kAboutPage = '/aboutPage';
const kSymptomPage = '/symptomPage';
const kSymptomPage2 = '/symptomPage2';
const kSymptomPage3 = '/symptomPage3';
const kSymptomPage4 = "/symptomPage4";

const kCoronaImage = 'images/corona.png';
const kCovidImage = 'images/covid.jpeg';
const kDoctorImage = 'images/doctor.png';
const kMaskImage = 'images/wear_mask.png';
const kHandWashImage = 'images/wash_hands.png';

const kMainColor = Color(0xFF2A7A83);

const kAppBarTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20);

const kDrawerTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

const kTotalCasesTextTextStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

const kTotalCasesDataTextStyle = TextStyle(
  fontSize: 40,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const kSymptomTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.grey,
  fontSize: 18,
);

const kMainBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ));

const kBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  color: Color(0xFFF8F8F8),
);

const kBoxDecoration2 = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  color: Colors.grey,
);

const kBoxDecoration3 = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  color: kMainColor,
);

const kAboutPageText =
    'The Covid Kavach App is meant to track Coronavirus and somehow control its spread.\nIf you are facing difficulty in breathing, body temperature, sore throat, and more and it will mark you as All Good, see a Doctor, Quarantine, and infected.';

final kAppBar = AppBar(
    backgroundColor: kMainColor,
    title: Text("Covid Kavach", style: kAppBarTextStyle));

Drawer kDrawer({BuildContext buildContext}) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: kMainColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(kCovidImage),
                flex: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Welcome to Covid Kavach',
                  style: kAppBarTextStyle,
                ),
              )
            ],
          ),
        ),
        ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: kDrawerTextStyle,
            ),
            onTap: () {
              Navigator.popAndPushNamed(buildContext, kMainPage);
            }),
        Divider(height: 3, thickness: 2),
        ListTile(
          leading: Icon(
            Icons.shield,
            color: Colors.black,
          ),
          title: Text(
            'Symptom Checker',
            style: kDrawerTextStyle,
          ),
          onTap: () {
            Navigator.pushNamed(buildContext, kSymptomPage);
          },
        ),
        Divider(height: 3, thickness: 2),
        ListTile(
          leading: Icon(
            FontAwesomeIcons.infoCircle,
            color: Colors.black,
          ),
          title: Text(
            'About',
            style: kDrawerTextStyle,
          ),
          onTap: () {
            Navigator.pushNamed(buildContext, kAboutPage);
          },
        ),
        Divider(height: 3, thickness: 2),
      ],
    ),
  );
}

Expanded expanded({Widget widget, int flex, String string}) {
  return Expanded(
    flex: 2,
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Symptom Checker',
            style: kAppBarTextStyle,
          ),
          Column(
            children: [
              Container(
                height: 10,
                margin: EdgeInsets.all(15),
                decoration: kBoxDecoration2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: kBoxDecoration,
                      ),
                      flex: flex,
                    ),
                    widget,
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      string,
                      style: kSymptomTextStyle,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Container container(
    {String string,
    TextStyle textStyle,
    BoxDecoration boxDecoration,
    Function function}) {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: boxDecoration,
    child: TextButton(
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Text(
          string,
          style: textStyle,
        ),
      ),
    ),
  );
}

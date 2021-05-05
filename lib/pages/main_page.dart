import 'package:covid_kavach_india/const.dart';
import 'package:flutter/material.dart';
import 'package:covid_kavach_india/networking/decode_data.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _saving = false;
  var totalCases = 0;
  var totalDeaths = 0;
  var totalRecovered = 0;
  var active = 0;
  var country = 'India';
  var todayDeaths = 0;
  var todayCases = 0;
  var todayRecovered = 0;

  Future getCovidData() async {
    CovidData covidData = CovidData(
        url:
            "https://corona.lmao.ninja/v2/countries/India?yesterday&strict&query%20");
    _saving = true;
    var data = await covidData.getDecodeData();
    _saving = false;

    if (data != null) {
      setState(() {
        totalCases = data["cases"];
        totalDeaths = data['deaths'];
        totalRecovered = data['recovered'];
        active = data['active'];
        country = data['country'];
        // todayCases = data["todayCases"];
        // todayDeaths = data["todayDeaths"];
        // todayRecovered = data['todayRecovered'];
      });
    }
  }

  Column column(
      {String title,
      String mainData,
      Color dataColor,
      Color arrowColor,
      String data}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Text(
              mainData,
              style: TextStyle(
                  color: dataColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_upward,
                  color: arrowColor,
                ),
                Text(
                  data,
                  style: TextStyle(
                      color: dataColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  @override
  void initState() {
    getCovidData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      drawer: kDrawer(buildContext: context),
      backgroundColor: kMainColor,
      body: ModalProgressHUD(
        inAsyncCall: _saving,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Image.asset(kCoronaImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$totalCases', style: kTotalCasesDataTextStyle),
                        Text(' TotalCases', style: kTotalCasesTextTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: kMainBoxDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 10),
                        decoration: kBoxDecoration,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, kSymptomPage);
                          },
                          child: Row(
                            children: [
                              Image.asset(kDoctorImage),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Symptom Checker',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'Based on Common\nSymptoms',
                                    textAlign: TextAlign.center,
                                    style: kSymptomTextStyle,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 10),
                              decoration: kBoxDecoration,
                              child: column(
                                data: "$todayCases",
                                mainData: '$totalCases',
                                arrowColor: Colors.red,
                                dataColor: Colors.red,
                                title: 'Confirmed',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 20),
                              decoration: kBoxDecoration,
                              child: column(
                                data: "$todayRecovered",
                                mainData: '$totalRecovered',
                                arrowColor: Colors.green,
                                dataColor: Colors.green,
                                title: 'Recovered',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 10),
                              decoration: kBoxDecoration,
                              child: column(
                                data: "$todayDeaths",
                                mainData: '$totalDeaths',
                                arrowColor: Colors.red,
                                dataColor: Colors.red,
                                title: 'Deceased',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 20),
                              decoration: kBoxDecoration,
                              child: column(
                                data: "",
                                mainData: '$active',
                                arrowColor: Color(0xFFF8F8F8),
                                dataColor: Colors.red,
                                title: 'Active',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

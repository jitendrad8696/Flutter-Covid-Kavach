import 'dart:convert';
import 'package:http/http.dart ' as http;

class CovidData {
  String url;

  CovidData({this.url});

  Future getDecodeData() async {
    try {
      Uri uri = Uri.parse(url);
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<Map> getData() async {
    http.Response response = await http.get(Uri.parse(
        url),
    );
    if (response.statusCode == 200) {
      String data = response.body;

      var decodeData = jsonDecode(data);

      return decodeData;
    }
    else {
      print(response.statusCode);
    }
  }
}
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TwilioFunctionsService {
  TwilioFunctionsService._();
  static final instance = TwilioFunctionsService._();

  final http.Client client = http.Client();
  final accessTokenUrl =
      'https://twiliochatroomaccesstoken-7838.twil.io/accessToken';

  Future<dynamic> createToken(String identity) async {
    try {
      Map<String, String> header = {
        'Content-Type': 'application/json',
      };
      var url = Uri.parse('$accessTokenUrl?user=$identity');
      print(url);
      final response = await client.get(url, headers: header);
      Map<String, dynamic> responseMap = jsonDecode(response.body);

      return responseMap;
    } catch (error) {
      throw Exception([error.toString()]);
    }
  }
}

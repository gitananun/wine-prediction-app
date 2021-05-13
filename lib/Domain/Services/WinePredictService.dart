import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:schema/Infrastructure/Exceptions/Services/WinePredictServiceException.dart';

class WinePredictService {
  Future<http.Response> predict(Map<String, Object> attributes) async {
    try {
      return http.post(
        Uri.https('wine-predict-api.herokuapp.com', 'predict'),
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(attributes),
      );
    } catch (e) {
      throw WinePredictServiceException();
    }
  }
}

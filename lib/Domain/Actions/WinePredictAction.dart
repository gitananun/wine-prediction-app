import 'dart:convert';

import 'package:schema/Domain/Services/WinePredictService.dart';
import 'package:http/http.dart' as http;

class WinePredictAction {
  Future<Map<String, dynamic>> predict(Map<String, Object> attributes) async {
    WinePredictService service = WinePredictService();
    http.Response result = await service.predict(attributes);
    return jsonDecode(result.body);
  }
}

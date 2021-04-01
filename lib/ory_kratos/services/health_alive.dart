import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/constants/service.dart';
import 'package:blog/ory_kratos/models/health_alive.dart';

class HealthAliveService {
  static final client = http.Client();

  static Future<HealthAlive?> getHealthAlive() async {
    Uri uri = Uri.parse('http://' + URI_ORI_KRATOS + '/health/alive');
    final response = await client.get(uri);

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> healthAliveMap = jsonDecode(response.body);
        return HealthAlive.fromJson(healthAliveMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}

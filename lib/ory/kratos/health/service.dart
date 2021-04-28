import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/health/model.dart';

class HealthAliveService {
  static final client = http.Client();

  static Future<HealthAlive?> getHealthAlive() async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/health/alive');
    final response = await client.get(
      uri,
      headers: Ory.JSON_HEADERS,
    );

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

class HealthReadyService {
  static final client = http.Client();

  static Future<HealthReady?> getHealthReady() async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/health/ready');
    final response = await client.get(
      uri,
      headers: Ory.JSON_HEADERS,
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> healthReadyMap = jsonDecode(response.body);
        return HealthReady.fromJson(healthReadyMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}

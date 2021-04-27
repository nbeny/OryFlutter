import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/registration/model.dart';

class RegistrationService {
  static final client = http.Client();

  static Future<InitRegistration?> getInitRegistrationApi() async {
    Uri uri = Uri.parse(
        Ory.HTTP + Ory.URI_ORI_KRATOS + '/self-service/registration/api');
    final response = await client.get(uri, headers: Ory.HEADERS);

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> registrationMap = jsonDecode(response.body);
        return InitRegistration.fromJson(registrationMap);
      }

      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> getInitRegitrationBrowser() async {
    Uri uri = Uri.parse(
        Ory.HTTP + Ory.URI_ORI_KRATOS + '/self-service/registration/browser');
    final response = await client.get(uri, headers: Ory.HEADERS);

    try {
      if (response.statusCode == 201) {
        print(response.statusCode);
        print(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Registration?> postRegistrationFlow(
      String id, Object body) async {
    Uri uri = Uri.parse(Ory.HTTP +
        Ory.URI_ORI_KRATOS +
        '/self-service/registration/flows?id=' +
        id);
    final response = await client.post(uri, headers: Ory.HEADERS, body: body);

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> registrationMap = jsonDecode(response.body);
        return Registration.fromJson(registrationMap);
      }

      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}

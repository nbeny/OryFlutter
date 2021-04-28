import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/registration/model.dart';

class RegistrationService {
  static final client = http.Client();

  static Future<InitRegistration?> getInitRegistrationApi() async {
    Uri uri = Uri.parse(
        Ory.HTTP + Ory.URI_ORI_KRATOS + '/self-service/registration/api');
    final response = await client.get(uri, headers: Ory.JSON_HEADERS);
    print(response.body);

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
    print("test1");
    final response = await client.get(uri, headers: Ory.WWW_HEADERS);
    print(response.toString());
    print("test2");

    try {
      if (response.statusCode == 201) {
        print(response.statusCode);
        print(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<InitRegistration?> getRegistrationFlow(String id) async {
    Uri uri = Uri.parse(Ory.HTTP +
        Ory.URI_ORI_KRATOS +
        '/self-service/registration/flows?id=' +
        id);
    final response = await client.get(uri, headers: Ory.JSON_HEADERS);
    print(response.body);
    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> registrationMap = jsonDecode(response.body);
        return InitRegistration.fromJson(registrationMap);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Registration?> postRegistration(String id, Object body) async {
    print(id);
    print(body);
    Uri uri = Uri.parse(Ory.HTTP +
        Ory.URI_ORI_KRATOS +
        '/self-service/registration/methods/password?flow=' +
        id);
    print(uri.toString());
    final response = await client.post(uri, body: body);
    print(response.body.toString());

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> registrationMap = jsonDecode(response.body);
        return Registration.fromJson(registrationMap);
      } else if (response.statusCode == 201) {
        print("Registration OK via status 201!");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

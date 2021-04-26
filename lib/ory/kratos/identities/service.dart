import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/identities/model.dart';

class IdentitiesService {
  static final client = http.Client();

  static Future<Identities?> getIdentities() async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities');
    final response = await client.get(
      uri,
      headers: Ory.HEADERS,
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> listIdentitiesMap = jsonDecode(response.body);
        return Identities.fromJson(listIdentitiesMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Identitie?> getIdentitie(String id) async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities/' + id);
    final response = await client.get(
      uri,
      headers: Ory.HEADERS,
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> identitiesMap = jsonDecode(response.body);
        return Identitie.fromJson(identitiesMap);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Identitie?> postIdentitie(
      String id, Map<String, String> body) async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities/' + id);
    final response = await client.post(
      uri,
      headers: Ory.HEADERS,
      body: jsonEncode(body),
    );

    try {
      if (response.statusCode == 201) {
        Map<String, dynamic> identitiesMap = jsonDecode(response.body);
        return Identitie.fromJson(identitiesMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Identitie?> putIdentitie(
      String id, Map<String, String> body) async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities/' + id);
    final response = await client.put(
      uri,
      headers: Ory.HEADERS,
      body: jsonEncode(body),
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> identitiesMap = jsonDecode(response.body);
        return Identitie.fromJson(identitiesMap);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<String> deleteIdentitie(String id) async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities/' + id);
    final response = await client.delete(
      uri,
      headers: Ory.HEADERS,
    );

    try {
      if (response.statusCode == 201 && response.statusCode == 204) {
        jsonDecode(response.body);
        return "User as been deleted.";
      }
      return "User as not been deleted.";
    } catch (e) {
      throw Exception(e);
    }
  }
}

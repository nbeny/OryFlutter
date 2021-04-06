import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/identities/model.dart';

class IdentitiesService {
  static final client = http.Client();

  static Future<ListIdentities?> getListIdentities() async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities');
    final response = await client.get(
      uri,
      headers: Ory.HEADERS,
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> listIdentitiesMap = jsonDecode(response.body);
        return ListIdentities.fromJson(listIdentitiesMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Identities?> getIdentities(String id) async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/identities/' + id);
    final response = await client.get(
      uri,
      headers: Ory.HEADERS,
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> identitiesMap = jsonDecode(response.body);
        return Identities.fromJson(identitiesMap);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Identities?> postIdentities(
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
        return Identities.fromJson(identitiesMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Identities?> putIdentities(
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
        return Identities.fromJson(identitiesMap);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<String> deleteIdentities(String id) async {
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

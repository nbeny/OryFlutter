import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/recovery_link/model.dart';

class IdentitiesService {
  static final client = http.Client();

  static Future<RecoveryLink?> getRecoveryLink() async {
    Uri uri = Uri.parse(Ory.HTTP + Ory.URI_ORI_KRATOS + '/recovery/link');
    final response = await client.get(
      uri,
      headers: Ory.HEADERS,
    );

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> recoveryLinkMap = jsonDecode(response.body);
        return RecoveryLink.fromJson(recoveryLinkMap);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}

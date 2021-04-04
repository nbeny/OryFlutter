import 'dart:convert';

import 'package:blog/ory_kratos/health_alive/model.dart';
import 'package:test/test.dart';

void main() {
  test('JsonSerializable', () {
    final healthAlive = HealthAlive('false');

    final healthAliveJson = _encode(healthAlive);

    final healthAlive2 = HealthAlive.fromJson(
        json.decode(healthAliveJson) as Map<String, dynamic>);

    expect(healthAlive.status, healthAlive2.status);

    expect(_encode(healthAlive2), equals(healthAliveJson));
  });
}

String _encode(Object object) =>
    const JsonEncoder.withIndent(' ').convert(object);

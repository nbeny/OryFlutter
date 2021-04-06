// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthAlive _$HealthAliveFromJson(Map<String, dynamic> json) {
  return HealthAlive(
    json['status'] as String? ?? 'down',
  );
}

Map<String, dynamic> _$HealthAliveToJson(HealthAlive instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

HealthReady _$HealthReadyFromJson(Map<String, dynamic> json) {
  return HealthReady(
    json['status'] as String? ?? 'down',
  );
}

Map<String, dynamic> _$HealthReadyToJson(HealthReady instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

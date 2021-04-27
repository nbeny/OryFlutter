// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitRegistration _$InitRegistrationFromJson(Map<String, dynamic> json) {
  return InitRegistration(
    json['id'] as String,
    json['type'] as String,
    DateTime.parse(json['expired_at'] as String),
    DateTime.parse(json['issued_at'] as String),
    json['request_url'] as String,
    (json['messages'] as List<dynamic>?)?.map((e) => e as Object).toList(),
    json['methods'] as Object,
  );
}

Map<String, dynamic> _$InitRegistrationToJson(InitRegistration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'expired_at': instance.expired_at.toIso8601String(),
      'issued_at': instance.issued_at.toIso8601String(),
      'request_url': instance.request_url,
      'messages': instance.messages,
      'methods': instance.methods,
    };

Registration _$RegistrationFromJson(Map<String, dynamic> json) {
  return Registration(
    json['session_token'] as String,
    json['session'] as Object,
    json['identity'] as Object,
  );
}

Map<String, dynamic> _$RegistrationToJson(Registration instance) =>
    <String, dynamic>{
      'session_token': instance.session_token,
      'session': instance.session,
      'identity': instance.identity,
    };

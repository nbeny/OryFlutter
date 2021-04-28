// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitRegistration _$InitRegistrationFromJson(Map<String, dynamic> json) {
  return InitRegistration(
    json['id'] as String,
    json['type'] as String?,
    json['expired_at'] == null
        ? null
        : DateTime.parse(json['expired_at'] as String),
    json['issued_at'] == null
        ? null
        : DateTime.parse(json['issued_at'] as String),
    json['request_url'] as String?,
    (json['messages'] as List<dynamic>?)?.map((e) => e as Object).toList(),
    Methods.fromJson(json['methods'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InitRegistrationToJson(InitRegistration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'expired_at': instance.expired_at?.toIso8601String(),
      'issued_at': instance.issued_at?.toIso8601String(),
      'request_url': instance.request_url,
      'messages': instance.messages,
      'methods': instance.methods,
    };

Registration _$RegistrationFromJson(Map<String, dynamic> json) {
  return Registration(
    json['session_token'] as String,
    json['session'],
    json['identity'],
  );
}

Map<String, dynamic> _$RegistrationToJson(Registration instance) =>
    <String, dynamic>{
      'session_token': instance.session_token,
      'session': instance.session,
      'identity': instance.identity,
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    json['context'] as Object,
    json['id'] as String,
    json['text'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'context': instance.context,
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
    };

Methods _$MethodsFromJson(Map<String, dynamic> json) {
  return Methods(
    Password.fromJson(json['password'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MethodsToJson(Methods instance) => <String, dynamic>{
      'password': instance.password,
    };

Password _$PasswordFromJson(Map<String, dynamic> json) {
  return Password(
    json['method'] as String,
    Config.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PasswordToJson(Password instance) => <String, dynamic>{
      'method': instance.method,
      'config': instance.config,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    json['action'] as String,
    json['method'] as String,
    (json['field'] as List<dynamic>?)
        ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'action': instance.action,
      'method': instance.method,
      'field': instance.field,
    };

Field _$FieldFromJson(Map<String, dynamic> json) {
  return Field(
    json['name'] as String,
    json['type'] as String,
    json['required'] as bool,
    json['value'] as String,
  );
}

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'required': instance.required,
      'value': instance.value,
    };

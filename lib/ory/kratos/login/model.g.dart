// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginApi _$LoginApiFromJson(Map<String, dynamic> json) {
  return LoginApi(
    json['active'] as String,
    DateTime.parse(json['expired_at'] as String),
    json['forced'] as bool,
    json['id'] as String,
    json['issued_at'] as String,
    (json['messages'] as List<dynamic>)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    Methods.fromJson(json['methods'] as Map<String, dynamic>),
    json['request_url'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$LoginApiToJson(LoginApi instance) => <String, dynamic>{
      'active': instance.active,
      'expired_at': instance.expired_at.toIso8601String(),
      'forced': instance.forced,
      'id': instance.id,
      'issued_at': instance.issued_at,
      'messages': instance.messages,
      'methods': instance.methods,
      'request_url': instance.request_url,
      'type': instance.type,
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    json['context'] as Object,
    json['id'] as int,
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
    Property.fromJson(json['property1'] as Map<String, dynamic>),
    Property.fromJson(json['property2'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MethodsToJson(Methods instance) => <String, dynamic>{
      'property1': instance.property1,
      'property2': instance.property2,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return Property(
    Config.fromJson(json['config'] as Map<String, dynamic>),
    json['method'] as String,
  );
}

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'config': instance.config,
      'method': instance.method,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    json['action'] as String,
    (json['fields'] as List<dynamic>)
        .map((e) => Field.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['messages'] as List<dynamic>)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['method'] as String,
    (json['providers'] as List<dynamic>)
        .map((e) => Provider.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'action': instance.action,
      'fields': instance.fields,
      'messages': instance.messages,
      'method': instance.method,
      'providers': instance.providers,
    };

Field _$FieldFromJson(Map<String, dynamic> json) {
  return Field(
    json['disabled'] as bool,
    (json['messages'] as List<dynamic>)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['name'] as String,
    json['pattern'] as String,
    json['required'] as bool,
    json['type'] as String,
    json['value'] as Object,
  );
}

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'disabled': instance.disabled,
      'messages': instance.messages,
      'name': instance.name,
      'pattern': instance.pattern,
      'required': instance.required,
      'type': instance.type,
      'value': instance.value,
    };

Provider _$ProviderFromJson(Map<String, dynamic> json) {
  return Provider(
    json['disabled'] as bool,
    (json['messages'] as List<dynamic>)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['name'] as String,
    json['pattern'] as String,
    json['required'] as bool,
    json['type'] as String,
    json['value'] as Object,
  );
}

Map<String, dynamic> _$ProviderToJson(Provider instance) => <String, dynamic>{
      'disabled': instance.disabled,
      'messages': instance.messages,
      'name': instance.name,
      'pattern': instance.pattern,
      'required': instance.required,
      'type': instance.type,
      'value': instance.value,
    };

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session(
    json['csrf_token'] as String,
    json['identifier'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'csrf_token': instance.csrf_token,
      'identifier': instance.identifier,
      'password': instance.password,
    };

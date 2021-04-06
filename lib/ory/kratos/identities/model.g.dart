// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListIdentities _$ListIdentitiesFromJson(Map<String, dynamic> json) {
  return ListIdentities(
    (json['identities'] as List<dynamic>)
        .map((e) => Identities.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListIdentitiesToJson(ListIdentities instance) =>
    <String, dynamic>{
      'identities': instance.identities,
    };

Identities _$IdentitiesFromJson(Map<String, dynamic> json) {
  return Identities(
    json['id'] as String,
    (json['recoveryAddresses'] as List<dynamic>)
        .map((e) => RecoveryAddress.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['schemaId'] as String,
    json['schemaUrl'] as String,
    json['traits'] as Object,
    (json['verifiableAddresses'] as List<dynamic>)
        .map((e) => VerifiableAddress.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$IdentitiesToJson(Identities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recoveryAddresses': instance.recoveryAddresses,
      'schemaId': instance.schemaId,
      'schemaUrl': instance.schemaUrl,
      'traits': instance.traits,
      'verifiableAddresses': instance.verifiableAddresses,
    };

RecoveryAddress _$RecoveryAddressFromJson(Map<String, dynamic> json) {
  return RecoveryAddress(
    json['id'] as String,
    json['value'] as String,
    json['via'] as String,
  );
}

Map<String, dynamic> _$RecoveryAddressToJson(RecoveryAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'via': instance.via,
    };

VerifiableAddress _$VerifiableAddressFromJson(Map<String, dynamic> json) {
  return VerifiableAddress(
    json['id'] as String,
    json['status'] as String,
    json['value'] as String,
    json['verified'] as bool,
    DateTime.parse(json['verifiedAt'] as String),
    json['via'] as String,
  );
}

Map<String, dynamic> _$VerifiableAddressToJson(VerifiableAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'value': instance.value,
      'verified': instance.verified,
      'verifiedAt': instance.verifiedAt.toIso8601String(),
      'via': instance.via,
    };

NotFoundIdentities _$NotFoundIdentitiesFromJson(Map<String, dynamic> json) {
  return NotFoundIdentities(
    ErrorIdentities.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NotFoundIdentitiesToJson(NotFoundIdentities instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

ErrorIdentities _$ErrorIdentitiesFromJson(Map<String, dynamic> json) {
  return ErrorIdentities(
    json['code'] as int,
    json['debug'] as String,
    json['details'] as Object,
    json['message'] as String,
    json['reason'] as String,
    json['request'] as String,
    json['status'] as String,
  );
}

Map<String, dynamic> _$ErrorIdentitiesToJson(ErrorIdentities instance) =>
    <String, dynamic>{
      'code': instance.code,
      'debug': instance.debug,
      'details': instance.details,
      'message': instance.message,
      'reason': instance.reason,
      'request': instance.request,
      'status': instance.status,
    };

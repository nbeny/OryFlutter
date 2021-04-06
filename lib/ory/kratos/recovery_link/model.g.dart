// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecoveryLink _$RecoveryLinkFromJson(Map<String, dynamic> json) {
  return RecoveryLink(
    json['expiredIn'] as String,
    json['identityId'] as String,
  );
}

Map<String, dynamic> _$RecoveryLinkToJson(RecoveryLink instance) =>
    <String, dynamic>{
      'expiredIn': instance.expiredIn,
      'identityId': instance.identityId,
    };

import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class ListIdentities {
  List<Identities> identities;

  ListIdentities(this.identities);

  /// A necessary factory constructor for creating a new ListIdentities instance
  /// from a map. Pass the map to the generated `_$ListIdentitiesToJson()` constructor.
  /// The constructor is named after the source class, in this case, ListIdentities.
  factory ListIdentities.fromJson(Map<String, dynamic> json) =>
      _$ListIdentitiesFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ListIdentitiesToJson`.
  Map<String, dynamic> toJson() => _$ListIdentitiesToJson(this);
}

@JsonSerializable()
class Identities {
  String id;
  List<RecoveryAddress> recoveryAddresses;
  String schemaId;
  String schemaUrl;
  Object traits;
  List<VerifiableAddress> verifiableAddresses;

  Identities(this.id, this.recoveryAddresses, this.schemaId, this.schemaUrl,
      this.traits, this.verifiableAddresses);

  /// A necessary factory constructor for creating a new Identities instance
  /// from a map. Pass the map to the generated `_$IdentitiesToJson()` constructor.
  /// The constructor is named after the source class, in this case, Identities.
  factory Identities.fromJson(Map<String, dynamic> json) =>
      _$IdentitiesFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$IdentitiesToJson`.
  Map<String, dynamic> toJson() => _$IdentitiesToJson(this);
}

@JsonSerializable()
class RecoveryAddress {
  String id;
  String value;
  String via;

  RecoveryAddress(this.id, this.value, this.via);

  /// A necessary factory constructor for creating a new RecoveryAddress instance
  /// from a map. Pass the map to the generated `_$RecoveryAddressToJson()` constructor.
  /// The constructor is named after the source class, in this case, RecoveryAddress.
  factory RecoveryAddress.fromJson(Map<String, dynamic> json) =>
      _$RecoveryAddressFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$RecoveryAddressToJson`.
  Map<String, dynamic> toJson() => _$RecoveryAddressToJson(this);
}

@JsonSerializable()
class VerifiableAddress {
  String id;
  String status;
  String value;
  bool verified;
  DateTime verifiedAt;
  String via;

  VerifiableAddress(this.id, this.status, this.value, this.verified,
      this.verifiedAt, this.via);

  /// A necessary factory constructor for creating a new VerifiableAddress instance
  /// from a map. Pass the map to the generated `_$VerifiableAddressToJson()` constructor.
  /// The constructor is named after the source class, in this case, VerifiableAddress.
  factory VerifiableAddress.fromJson(Map<String, dynamic> json) =>
      _$VerifiableAddressFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$VerifiableAddressToJson`.
  Map<String, dynamic> toJson() => _$VerifiableAddressToJson(this);
}

@JsonSerializable()
class NotFoundIdentities {
  ErrorIdentities error;

  NotFoundIdentities(this.error);

  /// A necessary factory constructor for creating a new NotFoundIdentities instance
  /// from a map. Pass the map to the generated `_$NotFoundIdentitiesToJson()` constructor.
  /// The constructor is named after the source class, in this case, NotFoundIdentities.
  factory NotFoundIdentities.fromJson(Map<String, dynamic> json) =>
      _$NotFoundIdentitiesFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$NotFoundIdentitiesToJson`.
  Map<String, dynamic> toJson() => _$NotFoundIdentitiesToJson(this);
}

@JsonSerializable()
class ErrorIdentities {
  int code;
  String debug;
  Object details;
  String message;
  String reason;
  String request;
  String status;

  ErrorIdentities(this.code, this.debug, this.details, this.message,
      this.reason, this.request, this.status);

  /// A necessary factory constructor for creating a new ErrorIdentities instance
  /// from a map. Pass the map to the generated `_$ErrorIdentitiesToJson()` constructor.
  /// The constructor is named after the source class, in this case, ErrorIdentities.
  factory ErrorIdentities.fromJson(Map<String, dynamic> json) =>
      _$ErrorIdentitiesFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ErrorIdentitiesToJson`.
  Map<String, dynamic> toJson() => _$ErrorIdentitiesToJson(this);
}

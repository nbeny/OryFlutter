import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class RecoveryLink {
  String expiredIn;
  String identityId;

  RecoveryLink(this.expiredIn, this.identityId);

  /// A necessary factory constructor for creating a new RecoveryLink instance
  /// from a map. Pass the map to the generated `_$RecoveryLinkToJson()` constructor.
  /// The constructor is named after the source class, in this case, RecoveryLink.
  factory RecoveryLink.fromJson(Map<String, dynamic> json) =>
      _$RecoveryLinkFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$RecoveryLinkToJson`.
  Map<String, dynamic> toJson() => _$RecoveryLinkToJson(this);
}

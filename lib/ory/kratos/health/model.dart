import 'package:json_annotation/json_annotation.dart';

/// This allows the `HealthAlive` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
/// run `flutter pub run build_runner build` to generate the file
/// run `flutter pub run build_runner watch` to watch and regenerate if need
part 'model.g.dart';

@JsonSerializable()
class HealthAlive {
  @JsonKey(defaultValue: 'down')
  String status;

  HealthAlive(this.status);

  /// A necessary factory constructor for creating a new HealthAlive instance
  /// from a map. Pass the map to the generated `_$HealthAliveToJson()` constructor.
  /// The constructor is named after the source class, in this case, HealthAlive.
  factory HealthAlive.fromJson(Map<String, dynamic> json) =>
      _$HealthAliveFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$HealthAliveToJson`.
  Map<String, dynamic> toJson() => _$HealthAliveToJson(this);
}

@JsonSerializable()
class HealthReady {
  @JsonKey(defaultValue: 'down')
  String status;

  HealthReady(this.status);

  /// A necessary factory constructor for creating a new HealthReady instance
  /// from a map. Pass the map to the generated `_$HealthReadyToJson()` constructor.
  /// The constructor is named after the source class, in this case, HealthReady.
  factory HealthReady.fromJson(Map<String, dynamic> json) =>
      _$HealthReadyFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$HealthReadyToJson`.
  Map<String, dynamic> toJson() => _$HealthReadyToJson(this);
}

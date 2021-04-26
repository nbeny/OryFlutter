import 'package:json_annotation/json_annotation.dart';

/// This allows the `LoginApi` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
/// run `flutter pub run build_runner build` to generate the file
/// run `flutter pub run build_runner watch` to watch and regenerate if need
part 'model.g.dart';

@JsonSerializable()
class LoginApi {
  String active;
  DateTime expired_at;
  bool forced;
  String id;
  String issued_at;
  List<Message> messages;
  Methods methods;
  String request_url;
  String type;

  LoginApi(this.active, this.expired_at, this.forced, this.id, this.issued_at,
      this.messages, this.methods, this.request_url, this.type);

  /// A necessary factory constructor for creating a new LoginApi instance
  /// from a map. Pass the map to the generated `_$LoginApiToJson()` constructor.
  /// The constructor is named after the source class, in this case, LoginApi.
  factory LoginApi.fromJson(Map<String, dynamic> json) =>
      _$LoginApiFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$LoginApiToJson`.
  Map<String, dynamic> toJson() => _$LoginApiToJson(this);
}

@JsonSerializable()
class Message {
  Object context;
  int id;
  String text;
  String type;

  Message(this.context, this.id, this.text, this.type);

  /// A necessary factory constructor for creating a new Message instance
  /// from a map. Pass the map to the generated `_$MessageToJson()` constructor.
  /// The constructor is named after the source class, in this case, Message.
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$MessageToJson`.
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable()
class Methods {
  Property property1;
  Property property2;

  Methods(this.property1, this.property2);

  /// A necessary factory constructor for creating a new Methods instance
  /// from a map. Pass the map to the generated `_$MethodsToJson()` constructor.
  /// The constructor is named after the source class, in this case, Methods.
  factory Methods.fromJson(Map<String, dynamic> json) =>
      _$MethodsFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$MethodsToJson`.
  Map<String, dynamic> toJson() => _$MethodsToJson(this);
}

@JsonSerializable()
class Property {
  Config config;
  String method;

  Property(this.config, this.method);

  /// A necessary factory constructor for creating a new Property instance
  /// from a map. Pass the map to the generated `_$PropertyToJson()` constructor.
  /// The constructor is named after the source class, in this case, Property.
  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$PropertyToJson`.
  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

@JsonSerializable()
class Config {
  String action;
  List<Field> fields;
  List<Message> messages;
  String method;
  List<Provider> providers;

  Config(this.action, this.fields, this.messages, this.method, this.providers);

  /// A necessary factory constructor for creating a new Config instance
  /// from a map. Pass the map to the generated `_$ConfigToJson()` constructor.
  /// The constructor is named after the source class, in this case, Config.
  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ConfigToJson`.
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}

@JsonSerializable()
class Field {
  bool disabled;
  List<Message> messages;
  String name;
  String pattern;
  bool required;
  String type;
  Object value;

  Field(this.disabled, this.messages, this.name, this.pattern, this.required,
      this.type, this.value);

  /// A necessary factory constructor for creating a new Field instance
  /// from a map. Pass the map to the generated `_$FieldToJson()` constructor.
  /// The constructor is named after the source class, in this case, Field.
  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$FieldToJson`.
  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

@JsonSerializable()
class Provider {
  bool disabled;
  List<Message> messages;
  String name;
  String pattern;
  bool required;
  String type;
  Object value;

  Provider(this.disabled, this.messages, this.name, this.pattern, this.required,
      this.type, this.value);

  /// A necessary factory constructor for creating a new Provider instance
  /// from a map. Pass the map to the generated `_$ProviderToJson()` constructor.
  /// The constructor is named after the source class, in this case, Provider.
  factory Provider.fromJson(Map<String, dynamic> json) =>
      _$ProviderFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ProviderToJson`.
  Map<String, dynamic> toJson() => _$ProviderToJson(this);
}

@JsonSerializable()
class Session {
  String csrf_token;
  String identifier;
  String password;

  Session(this.csrf_token, this.identifier, this.password);

  /// A necessary factory constructor for creating a new Session instance
  /// from a map. Pass the map to the generated `_$SessionToJson()` constructor.
  /// The constructor is named after the source class, in this case, Session.
  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$SessionToJson`.
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}

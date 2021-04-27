import 'package:blog/ory/kratos/identities/model.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `Registration` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
/// run `flutter pub run build_runner build` to generate the file
/// run `flutter pub run build_runner watch` to watch and regenerate if need
part 'model.g.dart';

@JsonSerializable()
class InitRegistration {
  String id;
  String type;
  DateTime expired_at;
  DateTime issued_at;
  String request_url;
  @JsonKey(defaultValue: null)
  List<Object>? messages;
  Object methods;

  InitRegistration(this.id, this.type, this.expired_at, this.issued_at,
      this.request_url, this.messages, this.methods);

  /// A necessary factory constructor for creating a new InitRegistration instance
  /// from a map. Pass the map to the generated `_$InitRegistrationToJson()` constructor.
  /// The constructor is named after the source class, in this case, InitRegistration.
  factory InitRegistration.fromJson(Map<String, dynamic> json) =>
      _$InitRegistrationFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$InitRegistrationToJson`.
  Map<String, dynamic> toJson() => _$InitRegistrationToJson(this);
}

@JsonSerializable()
class Registration {
  String session_token;
  Object? session;
  Object? identity;

  Registration(this.session_token, this.session, this.identity);

  /// A necessary factory constructor for creating a new Registration instance
  /// from a map. Pass the map to the generated `_$RegistrationToJson()` constructor.
  /// The constructor is named after the source class, in this case, Registration.
  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$RegistrationToJson`.
  Map<String, dynamic> toJson() => _$RegistrationToJson(this);
}

// @JsonSerializable()
// class Message {
//   Object context;
//   String id;
//   String text;
//   String type;

//   Message(this.context, this.id, this.text, this.type);

//   /// A necessary factory constructor for creating a new Message instance
//   /// from a map. Pass the map to the generated `_$MessageToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Message.
//   factory Message.fromJson(Map<String, dynamic> json) =>
//       _$MessageFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$MessageToJson`.
//   Map<String, dynamic> toJson() => _$MessageToJson(this);
// }

// @JsonSerializable()
// class Methods {
//   Password password;

//   Methods(this.password);

//   /// A necessary factory constructor for creating a new Methods instance
//   /// from a map. Pass the map to the generated `_$MethodsToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Methods.
//   factory Methods.fromJson(Map<String, dynamic> json) =>
//       _$MethodsFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$MethodsToJson`.
//   Map<String, dynamic> toJson() => _$MethodsToJson(this);
// }

// @JsonSerializable()
// class Password {
//   String method;
//   Config config;

//   Password(this.method, this.config);

//   /// A necessary factory constructor for creating a new Password instance
//   /// from a map. Pass the map to the generated `_$PasswordToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Password.
//   factory Password.fromJson(Map<String, dynamic> json) =>
//       _$PasswordFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$PasswordToJson`.
//   Map<String, dynamic> toJson() => _$PasswordToJson(this);
// }

// @JsonSerializable()
// class Config {
//   String action;
//   String method;
//   List<Field> field;

//   Config(this.action, this.method, this.field);

//   /// A necessary factory constructor for creating a new Config instance
//   /// from a map. Pass the map to the generated `_$ConfigToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Config.
//   factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$ConfigToJson`.
//   Map<String, dynamic> toJson() => _$ConfigToJson(this);
// }

// @JsonSerializable()
// class Field {
//   String name;
//   String type;
//   bool required;
//   String value;

//   Field(this.name, this.type, this.required, this.value);

//   /// A necessary factory constructor for creating a new Field instance
//   /// from a map. Pass the map to the generated `_$FieldToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Field.
//   factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$FieldToJson`.
//   Map<String, dynamic> toJson() => _$FieldToJson(this);
// }

// @JsonSerializable()
// class Registration {
//   String session_token;
//   Session session;
//   Identity identity;

//   Registration(this.session_token, this.session, this.identity);

//   /// A necessary factory constructor for creating a new Registration instance
//   /// from a map. Pass the map to the generated `_$RegistrationToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Registration.
//   factory Registration.fromJson(Map<String, dynamic> json) =>
//       _$RegistrationFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$RegistrationToJson`.
//   Map<String, dynamic> toJson() => _$RegistrationToJson(this);
// }

// @JsonSerializable()
// class Session {
//   String id;
//   bool active;
//   DateTime expired_at;
//   DateTime authenticated_at;
//   DateTime issued_at;
//   Identity identity;

//   Session(this.id, this.active, this.expired_at, this.authenticated_at,
//       this.issued_at, this.identity);

//   /// A necessary factory constructor for creating a new Session instance
//   /// from a map. Pass the map to the generated `_$SessionToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Session.
//   factory Session.fromJson(Map<String, dynamic> json) =>
//       _$SessionFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$SessionToJson`.
//   Map<String, dynamic> toJson() => _$SessionToJson(this);
// }

// @JsonSerializable()
// class Identity {
//   String id;
//   String schema_id;
//   String schema_url;
//   Traits traits;
//   List<VerifiableAddress> verifiable_addresses;
//   List<RecoveryAddress> recovery_addresses;

//   Identity();

//   /// A necessary factory constructor for creating a new Identity instance
//   /// from a map. Pass the map to the generated `_$IdentityToJson()` constructor.
//   /// The constructor is named after the source class, in this case, Identity.
//   factory Identity.fromJson(Map<String, dynamic> json) =>
//       _$IdentityFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$IdentityToJson`.
//   Map<String, dynamic> toJson() => _$SessionToJson(this);
// }

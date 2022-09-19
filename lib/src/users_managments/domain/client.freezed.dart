// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
class _$ClientTearOff {
  const _$ClientTearOff();

  _Client call(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      required PreferredServiceType preferredServiceType,
      required List<String> diseases,
      required Map<String, Object> preferences}) {
    return _Client(
      id: id,
      uID: uID,
      preferredServiceType: preferredServiceType,
      diseases: diseases,
      preferences: preferences,
    );
  }

  Client fromJson(Map<String, Object> json) {
    return Client.fromJson(json);
  }
}

/// @nodoc
const $Client = _$ClientTearOff();

/// @nodoc
mixin _$Client {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get uID => throw _privateConstructorUsedError;
  PreferredServiceType get preferredServiceType =>
      throw _privateConstructorUsedError;
  List<String> get diseases => throw _privateConstructorUsedError;
  Map<String, Object> get preferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      PreferredServiceType preferredServiceType,
      List<String> diseases,
      Map<String, Object> preferences});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res> implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  final Client _value;
  // ignore: unused_field
  final $Res Function(Client) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uID = freezed,
    Object? preferredServiceType = freezed,
    Object? diseases = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uID: uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredServiceType: preferredServiceType == freezed
          ? _value.preferredServiceType
          : preferredServiceType // ignore: cast_nullable_to_non_nullable
              as PreferredServiceType,
      diseases: diseases == freezed
          ? _value.diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferences: preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
abstract class _$ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$ClientCopyWith(_Client value, $Res Function(_Client) then) =
      __$ClientCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      PreferredServiceType preferredServiceType,
      List<String> diseases,
      Map<String, Object> preferences});
}

/// @nodoc
class __$ClientCopyWithImpl<$Res> extends _$ClientCopyWithImpl<$Res>
    implements _$ClientCopyWith<$Res> {
  __$ClientCopyWithImpl(_Client _value, $Res Function(_Client) _then)
      : super(_value, (v) => _then(v as _Client));

  @override
  _Client get _value => super._value as _Client;

  @override
  $Res call({
    Object? id = freezed,
    Object? uID = freezed,
    Object? preferredServiceType = freezed,
    Object? diseases = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_Client(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uID: uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredServiceType: preferredServiceType == freezed
          ? _value.preferredServiceType
          : preferredServiceType // ignore: cast_nullable_to_non_nullable
              as PreferredServiceType,
      diseases: diseases == freezed
          ? _value.diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferences: preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Client implements _Client {
  _$_Client(
      {@JsonKey(name: '_id') this.id,
      this.uID,
      required this.preferredServiceType,
      required this.diseases,
      required this.preferences});

  factory _$_Client.fromJson(Map<String, dynamic> json) =>
      _$_$_ClientFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? uID;
  @override
  final PreferredServiceType preferredServiceType;
  @override
  final List<String> diseases;
  @override
  final Map<String, Object> preferences;

  @override
  String toString() {
    return 'Client(id: $id, uID: $uID, preferredServiceType: $preferredServiceType, diseases: $diseases, preferences: $preferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Client &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.preferredServiceType, preferredServiceType) ||
                const DeepCollectionEquality().equals(
                    other.preferredServiceType, preferredServiceType)) &&
            (identical(other.diseases, diseases) ||
                const DeepCollectionEquality()
                    .equals(other.diseases, diseases)) &&
            (identical(other.preferences, preferences) ||
                const DeepCollectionEquality()
                    .equals(other.preferences, preferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(preferredServiceType) ^
      const DeepCollectionEquality().hash(diseases) ^
      const DeepCollectionEquality().hash(preferences);

  @JsonKey(ignore: true)
  @override
  _$ClientCopyWith<_Client> get copyWith =>
      __$ClientCopyWithImpl<_Client>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClientToJson(this);
  }
}

abstract class _Client implements Client {
  factory _Client(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      required PreferredServiceType preferredServiceType,
      required List<String> diseases,
      required Map<String, Object> preferences}) = _$_Client;

  factory _Client.fromJson(Map<String, dynamic> json) = _$_Client.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get uID => throw _privateConstructorUsedError;
  @override
  PreferredServiceType get preferredServiceType =>
      throw _privateConstructorUsedError;
  @override
  List<String> get diseases => throw _privateConstructorUsedError;
  @override
  Map<String, Object> get preferences => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClientCopyWith<_Client> get copyWith => throw _privateConstructorUsedError;
}

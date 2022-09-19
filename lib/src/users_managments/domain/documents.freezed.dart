// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'documents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Documents _$DocumentsFromJson(Map<String, dynamic> json) {
  return _Documents.fromJson(json);
}

/// @nodoc
class _$DocumentsTearOff {
  const _$DocumentsTearOff();

  _Documents call(
      {required String url, required String name, required String attType}) {
    return _Documents(
      url: url,
      name: name,
      attType: attType,
    );
  }

  Documents fromJson(Map<String, Object> json) {
    return Documents.fromJson(json);
  }
}

/// @nodoc
const $Documents = _$DocumentsTearOff();

/// @nodoc
mixin _$Documents {
// 6. list all the arguments/properties
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get attType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsCopyWith<Documents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsCopyWith<$Res> {
  factory $DocumentsCopyWith(Documents value, $Res Function(Documents) then) =
      _$DocumentsCopyWithImpl<$Res>;
  $Res call({String url, String name, String attType});
}

/// @nodoc
class _$DocumentsCopyWithImpl<$Res> implements $DocumentsCopyWith<$Res> {
  _$DocumentsCopyWithImpl(this._value, this._then);

  final Documents _value;
  // ignore: unused_field
  final $Res Function(Documents) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? attType = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attType: attType == freezed
          ? _value.attType
          : attType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DocumentsCopyWith<$Res> implements $DocumentsCopyWith<$Res> {
  factory _$DocumentsCopyWith(
          _Documents value, $Res Function(_Documents) then) =
      __$DocumentsCopyWithImpl<$Res>;
  @override
  $Res call({String url, String name, String attType});
}

/// @nodoc
class __$DocumentsCopyWithImpl<$Res> extends _$DocumentsCopyWithImpl<$Res>
    implements _$DocumentsCopyWith<$Res> {
  __$DocumentsCopyWithImpl(_Documents _value, $Res Function(_Documents) _then)
      : super(_value, (v) => _then(v as _Documents));

  @override
  _Documents get _value => super._value as _Documents;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? attType = freezed,
  }) {
    return _then(_Documents(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attType: attType == freezed
          ? _value.attType
          : attType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Documents implements _Documents {
  _$_Documents({required this.url, required this.name, required this.attType});

  factory _$_Documents.fromJson(Map<String, dynamic> json) =>
      _$_$_DocumentsFromJson(json);

  @override // 6. list all the arguments/properties
  final String url;
  @override
  final String name;
  @override
  final String attType;

  @override
  String toString() {
    return 'Documents(url: $url, name: $name, attType: $attType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Documents &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.attType, attType) ||
                const DeepCollectionEquality().equals(other.attType, attType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(attType);

  @JsonKey(ignore: true)
  @override
  _$DocumentsCopyWith<_Documents> get copyWith =>
      __$DocumentsCopyWithImpl<_Documents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DocumentsToJson(this);
  }
}

abstract class _Documents implements Documents {
  factory _Documents(
      {required String url,
      required String name,
      required String attType}) = _$_Documents;

  factory _Documents.fromJson(Map<String, dynamic> json) =
      _$_Documents.fromJson;

  @override // 6. list all the arguments/properties
  String get url => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get attType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DocumentsCopyWith<_Documents> get copyWith =>
      throw _privateConstructorUsedError;
}

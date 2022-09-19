// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Service_provider _$Service_providerFromJson(Map<String, dynamic> json) {
  return _Service_provider.fromJson(json);
}

/// @nodoc
class _$Service_providerTearOff {
  const _$Service_providerTearOff();

  _Service_provider call(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      String? bio,
      required List<String> specialties,
      List<String>? preferredServiceType,
      double? minSessionFee,
      double? maxSessionFee,
      required List<Documents> document,
      List<String>? reviewerUIDs,
      required verificationStatus verified,
      DateTime? verificationDate,
      String? verifiedByUID}) {
    return _Service_provider(
      id: id,
      uID: uID,
      bio: bio,
      specialties: specialties,
      preferredServiceType: preferredServiceType,
      minSessionFee: minSessionFee,
      maxSessionFee: maxSessionFee,
      document: document,
      reviewerUIDs: reviewerUIDs,
      verified: verified,
      verificationDate: verificationDate,
      verifiedByUID: verifiedByUID,
    );
  }

  Service_provider fromJson(Map<String, Object> json) {
    return Service_provider.fromJson(json);
  }
}

/// @nodoc
const $Service_provider = _$Service_providerTearOff();

/// @nodoc
mixin _$Service_provider {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get uID => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  List<String> get specialties => throw _privateConstructorUsedError;
  List<String>? get preferredServiceType => throw _privateConstructorUsedError;
  double? get minSessionFee => throw _privateConstructorUsedError;
  double? get maxSessionFee => throw _privateConstructorUsedError;
  List<Documents> get document => throw _privateConstructorUsedError;
  List<String>? get reviewerUIDs => throw _privateConstructorUsedError;
  verificationStatus get verified => throw _privateConstructorUsedError;
  DateTime? get verificationDate => throw _privateConstructorUsedError;
  String? get verifiedByUID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Service_providerCopyWith<Service_provider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Service_providerCopyWith<$Res> {
  factory $Service_providerCopyWith(
          Service_provider value, $Res Function(Service_provider) then) =
      _$Service_providerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      String? bio,
      List<String> specialties,
      List<String>? preferredServiceType,
      double? minSessionFee,
      double? maxSessionFee,
      List<Documents> document,
      List<String>? reviewerUIDs,
      verificationStatus verified,
      DateTime? verificationDate,
      String? verifiedByUID});
}

/// @nodoc
class _$Service_providerCopyWithImpl<$Res>
    implements $Service_providerCopyWith<$Res> {
  _$Service_providerCopyWithImpl(this._value, this._then);

  final Service_provider _value;
  // ignore: unused_field
  final $Res Function(Service_provider) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uID = freezed,
    Object? bio = freezed,
    Object? specialties = freezed,
    Object? preferredServiceType = freezed,
    Object? minSessionFee = freezed,
    Object? maxSessionFee = freezed,
    Object? document = freezed,
    Object? reviewerUIDs = freezed,
    Object? verified = freezed,
    Object? verificationDate = freezed,
    Object? verifiedByUID = freezed,
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
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: specialties == freezed
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredServiceType: preferredServiceType == freezed
          ? _value.preferredServiceType
          : preferredServiceType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minSessionFee: minSessionFee == freezed
          ? _value.minSessionFee
          : minSessionFee // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSessionFee: maxSessionFee == freezed
          ? _value.maxSessionFee
          : maxSessionFee // ignore: cast_nullable_to_non_nullable
              as double?,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<Documents>,
      reviewerUIDs: reviewerUIDs == freezed
          ? _value.reviewerUIDs
          : reviewerUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as verificationStatus,
      verificationDate: verificationDate == freezed
          ? _value.verificationDate
          : verificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedByUID: verifiedByUID == freezed
          ? _value.verifiedByUID
          : verifiedByUID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$Service_providerCopyWith<$Res>
    implements $Service_providerCopyWith<$Res> {
  factory _$Service_providerCopyWith(
          _Service_provider value, $Res Function(_Service_provider) then) =
      __$Service_providerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      String? bio,
      List<String> specialties,
      List<String>? preferredServiceType,
      double? minSessionFee,
      double? maxSessionFee,
      List<Documents> document,
      List<String>? reviewerUIDs,
      verificationStatus verified,
      DateTime? verificationDate,
      String? verifiedByUID});
}

/// @nodoc
class __$Service_providerCopyWithImpl<$Res>
    extends _$Service_providerCopyWithImpl<$Res>
    implements _$Service_providerCopyWith<$Res> {
  __$Service_providerCopyWithImpl(
      _Service_provider _value, $Res Function(_Service_provider) _then)
      : super(_value, (v) => _then(v as _Service_provider));

  @override
  _Service_provider get _value => super._value as _Service_provider;

  @override
  $Res call({
    Object? id = freezed,
    Object? uID = freezed,
    Object? bio = freezed,
    Object? specialties = freezed,
    Object? preferredServiceType = freezed,
    Object? minSessionFee = freezed,
    Object? maxSessionFee = freezed,
    Object? document = freezed,
    Object? reviewerUIDs = freezed,
    Object? verified = freezed,
    Object? verificationDate = freezed,
    Object? verifiedByUID = freezed,
  }) {
    return _then(_Service_provider(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uID: uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: specialties == freezed
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredServiceType: preferredServiceType == freezed
          ? _value.preferredServiceType
          : preferredServiceType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minSessionFee: minSessionFee == freezed
          ? _value.minSessionFee
          : minSessionFee // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSessionFee: maxSessionFee == freezed
          ? _value.maxSessionFee
          : maxSessionFee // ignore: cast_nullable_to_non_nullable
              as double?,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<Documents>,
      reviewerUIDs: reviewerUIDs == freezed
          ? _value.reviewerUIDs
          : reviewerUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as verificationStatus,
      verificationDate: verificationDate == freezed
          ? _value.verificationDate
          : verificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedByUID: verifiedByUID == freezed
          ? _value.verifiedByUID
          : verifiedByUID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Service_provider implements _Service_provider {
  _$_Service_provider(
      {@JsonKey(name: '_id') this.id,
      this.uID,
      this.bio,
      required this.specialties,
      this.preferredServiceType,
      this.minSessionFee,
      this.maxSessionFee,
      required this.document,
      this.reviewerUIDs,
      required this.verified,
      this.verificationDate,
      this.verifiedByUID});

  factory _$_Service_provider.fromJson(Map<String, dynamic> json) =>
      _$_$_Service_providerFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? uID;
  @override
  final String? bio;
  @override
  final List<String> specialties;
  @override
  final List<String>? preferredServiceType;
  @override
  final double? minSessionFee;
  @override
  final double? maxSessionFee;
  @override
  final List<Documents> document;
  @override
  final List<String>? reviewerUIDs;
  @override
  final verificationStatus verified;
  @override
  final DateTime? verificationDate;
  @override
  final String? verifiedByUID;

  @override
  String toString() {
    return 'Service_provider(id: $id, uID: $uID, bio: $bio, specialties: $specialties, preferredServiceType: $preferredServiceType, minSessionFee: $minSessionFee, maxSessionFee: $maxSessionFee, document: $document, reviewerUIDs: $reviewerUIDs, verified: $verified, verificationDate: $verificationDate, verifiedByUID: $verifiedByUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Service_provider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.specialties, specialties) ||
                const DeepCollectionEquality()
                    .equals(other.specialties, specialties)) &&
            (identical(other.preferredServiceType, preferredServiceType) ||
                const DeepCollectionEquality().equals(
                    other.preferredServiceType, preferredServiceType)) &&
            (identical(other.minSessionFee, minSessionFee) ||
                const DeepCollectionEquality()
                    .equals(other.minSessionFee, minSessionFee)) &&
            (identical(other.maxSessionFee, maxSessionFee) ||
                const DeepCollectionEquality()
                    .equals(other.maxSessionFee, maxSessionFee)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.reviewerUIDs, reviewerUIDs) ||
                const DeepCollectionEquality()
                    .equals(other.reviewerUIDs, reviewerUIDs)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)) &&
            (identical(other.verificationDate, verificationDate) ||
                const DeepCollectionEquality()
                    .equals(other.verificationDate, verificationDate)) &&
            (identical(other.verifiedByUID, verifiedByUID) ||
                const DeepCollectionEquality()
                    .equals(other.verifiedByUID, verifiedByUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(specialties) ^
      const DeepCollectionEquality().hash(preferredServiceType) ^
      const DeepCollectionEquality().hash(minSessionFee) ^
      const DeepCollectionEquality().hash(maxSessionFee) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(reviewerUIDs) ^
      const DeepCollectionEquality().hash(verified) ^
      const DeepCollectionEquality().hash(verificationDate) ^
      const DeepCollectionEquality().hash(verifiedByUID);

  @JsonKey(ignore: true)
  @override
  _$Service_providerCopyWith<_Service_provider> get copyWith =>
      __$Service_providerCopyWithImpl<_Service_provider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_Service_providerToJson(this);
  }
}

abstract class _Service_provider implements Service_provider {
  factory _Service_provider(
      {@JsonKey(name: '_id') String? id,
      String? uID,
      String? bio,
      required List<String> specialties,
      List<String>? preferredServiceType,
      double? minSessionFee,
      double? maxSessionFee,
      required List<Documents> document,
      List<String>? reviewerUIDs,
      required verificationStatus verified,
      DateTime? verificationDate,
      String? verifiedByUID}) = _$_Service_provider;

  factory _Service_provider.fromJson(Map<String, dynamic> json) =
      _$_Service_provider.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get uID => throw _privateConstructorUsedError;
  @override
  String? get bio => throw _privateConstructorUsedError;
  @override
  List<String> get specialties => throw _privateConstructorUsedError;
  @override
  List<String>? get preferredServiceType => throw _privateConstructorUsedError;
  @override
  double? get minSessionFee => throw _privateConstructorUsedError;
  @override
  double? get maxSessionFee => throw _privateConstructorUsedError;
  @override
  List<Documents> get document => throw _privateConstructorUsedError;
  @override
  List<String>? get reviewerUIDs => throw _privateConstructorUsedError;
  @override
  verificationStatus get verified => throw _privateConstructorUsedError;
  @override
  DateTime? get verificationDate => throw _privateConstructorUsedError;
  @override
  String? get verifiedByUID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$Service_providerCopyWith<_Service_provider> get copyWith =>
      throw _privateConstructorUsedError;
}

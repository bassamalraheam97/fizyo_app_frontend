// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Client _$_$_ClientFromJson(Map<String, dynamic> json) {
  return _$_Client(
    id: json['_id'] as String?,
    uID: json['uID'] as String?,
    preferredServiceType: _$enumDecode(
        _$PreferredServiceTypeEnumMap, json['preferredServiceType']),
    diseases:
        (json['diseases'] as List<dynamic>).map((e) => e as String).toList(),
    preferences: (json['preferences'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$_$_ClientToJson(_$_Client instance) => <String, dynamic>{
      '_id': instance.id,
      'uID': instance.uID,
      'preferredServiceType':
          _$PreferredServiceTypeEnumMap[instance.preferredServiceType],
      'diseases': instance.diseases,
      'preferences': instance.preferences,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PreferredServiceTypeEnumMap = {
  PreferredServiceType.online: 'online',
  PreferredServiceType.home: 'home',
  PreferredServiceType.office: 'office',
};

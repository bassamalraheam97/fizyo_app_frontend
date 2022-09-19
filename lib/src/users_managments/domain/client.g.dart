// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      id: json['_id'] as String?,
      uID: json['uID'] as String?,
      preferredServiceType: $enumDecode(
          _$PreferredServiceTypeEnumMap, json['preferredServiceType']),
      diseases:
          (json['diseases'] as List<dynamic>).map((e) => e as String).toList(),
      preferences: (json['preferences'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      '_id': instance.id,
      'uID': instance.uID,
      'preferredServiceType':
          _$PreferredServiceTypeEnumMap[instance.preferredServiceType]!,
      'diseases': instance.diseases,
      'preferences': instance.preferences,
    };

const _$PreferredServiceTypeEnumMap = {
  PreferredServiceType.online: 'online',
  PreferredServiceType.home: 'home',
  PreferredServiceType.office: 'office',
};

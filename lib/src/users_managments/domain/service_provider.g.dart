// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceProvider _$$_ServiceProviderFromJson(Map<String, dynamic> json) =>
    _$_ServiceProvider(
      id: json['_id'] as String?,
      uID: json['uID'] as String?,
      bio: json['bio'] as String?,
      specialties: (json['specialties'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      preferredServiceType: (json['preferredServiceType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minSessionFee: (json['minSessionFee'] as num?)?.toDouble(),
      maxSessionFee: (json['maxSessionFee'] as num?)?.toDouble(),
      document: (json['document'] as List<dynamic>)
          .map((e) => Documents.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewerUIDs: (json['reviewerUIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      verified: $enumDecode(_$verificationStatusEnumMap, json['verified']),
      verificationDate: json['verificationDate'] == null
          ? null
          : DateTime.parse(json['verificationDate'] as String),
      verifiedByUID: json['verifiedByUID'] as String?,
    );

Map<String, dynamic> _$$_ServiceProviderToJson(_$_ServiceProvider instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'uID': instance.uID,
      'bio': instance.bio,
      'specialties': instance.specialties,
      'preferredServiceType': instance.preferredServiceType,
      'minSessionFee': instance.minSessionFee,
      'maxSessionFee': instance.maxSessionFee,
      'document': instance.document,
      'reviewerUIDs': instance.reviewerUIDs,
      'verified': _$verificationStatusEnumMap[instance.verified]!,
      'verificationDate': instance.verificationDate?.toIso8601String(),
      'verifiedByUID': instance.verifiedByUID,
    };

const _$verificationStatusEnumMap = {
  verificationStatus.notSubmitted: 'notSubmitted',
  verificationStatus.pendingReview: 'pendingReview',
  verificationStatus.inReview: 'inReview',
  verificationStatus.verified: 'verified',
  verificationStatus.rejected: 'rejected',
};

import 'package:freezed_annotation/freezed_annotation.dart';
import 'documents.dart';
// 2. add 'part' files
part 'service_provider.freezed.dart';
part 'service_provider.g.dart';

enum verificationStatus {
  notSubmitted,
  pendingReview,
  inReview,
  verified,
  rejected
}

@freezed
// 4. define a class with a mixin
class ServiceProvider with _$ServiceProvider {
  // 5. define a factory constructor
  factory ServiceProvider({
    @JsonKey(name: '_id') String? id,
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
    String? verifiedByUID,
    // 7. assign it with the `_Review` class constructor
  }) = _ServiceProvider;

  // 8. define another factory constructor to parse from json
  factory ServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderFromJson(json);
}

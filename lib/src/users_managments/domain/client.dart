import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

enum PreferredServiceType { online, home, office }

@freezed
class Client with _$Client {
  factory Client({
    @JsonKey(name: '_id') String? id,
    String? uID,
    required PreferredServiceType preferredServiceType,
    required List<String> diseases,
    required Map<String, dynamic> preferences,
  }) = _Client;
  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

// 2. add 'part' files
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    required String country,
    required String government,
    required String manipolicity,
  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

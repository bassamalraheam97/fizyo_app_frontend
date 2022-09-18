import 'package:freezed_annotation/freezed_annotation.dart';

// 2. add 'part' files
part 'documents.freezed.dart';
part 'documents.g.dart';
@freezed
// 4. define a class with a mixin
class Documents with _$Documents {
  // 5. define a factory constructor
  factory Documents({
    // 6. list all the arguments/properties
    required String url,
    required String name,
    required String attType,
  // 7. assign it with the `_Review` class constructor
  }) = _Documents;

  // 8. define another factory constructor to parse from json
  factory Documents.fromJson(Map<String, dynamic> json) => _$DocumentsFromJson(json);
}
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
part "unique_id.g.dart";

@JsonSerializable()
class UniqueId {
  final String value;
  const UniqueId._(this.value);
  factory UniqueId() {
    return UniqueId._(Uuid().v4());
  }
  factory UniqueId.fromString(String string) {
    return UniqueId._(string);
  }

  factory UniqueId.fromJson(Map<String, dynamic> json) =>
      _$UniqueIdFromJson(json);
  Map<String, dynamic> toJson() => _$UniqueIdToJson(this);
}

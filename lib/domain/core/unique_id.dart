import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends Equatable {
  final String value;
  const UniqueId._(this.value);
  factory UniqueId() {
    return UniqueId._(Uuid().v4());
  }
  factory UniqueId.fromString(String string) {
    return UniqueId._(string);
  }

  factory UniqueId.fromJson(Map<String, dynamic> json) {
    return UniqueId.fromString(json["value"]);
  }
  Map<String, dynamic> toJson() {
    return {"value": value};
  }

  @override
  List<Object> get props => [value];
}

import 'package:uuid/uuid.dart';

class UniqueId {
  final String value;
  const UniqueId._(this.value);
  factory UniqueId() {
    return UniqueId._(Uuid().v4());
  }
  factory UniqueId.fromString(String string) {
    return UniqueId._(string);
  }
}

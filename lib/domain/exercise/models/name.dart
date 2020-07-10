import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part "name.g.dart";

@JsonSerializable()
class Name extends Equatable {
  final String name;

  const Name(this.name);

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  Map<String, dynamic> toJson() => _$NameToJson(this);
  @override
  List<Object> get props => [name];
}

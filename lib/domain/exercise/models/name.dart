import 'package:equatable/equatable.dart';

class Name extends Equatable {
  final String name;

  const Name(this.name);

  @override
  List<Object> get props => [name];
}

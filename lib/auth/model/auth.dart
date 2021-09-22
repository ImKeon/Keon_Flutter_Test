import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable(explicitToJson: true)
class Auth extends Equatable {

  final int? id;
  final String? name;
  final String? email;
  final String? password;

  Auth({
    this.id,
    this.name,
    this.email,
    this.password
  });

  factory Auth.fromJson(Map<String, dynamic> json) =>
      _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => 'Auth { id: $id }';

}
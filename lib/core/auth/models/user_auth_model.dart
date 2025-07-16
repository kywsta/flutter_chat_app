import 'package:json_annotation/json_annotation.dart';

part 'user_auth_model.g.dart';

@JsonSerializable()
class UserAuthModel {
  final String token;
  final User user;

  UserAuthModel({required this.token, required this.user});

  factory UserAuthModel.fromJson(Map<String, dynamic> json) =>
      _$UserAuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserAuthModelToJson(this);
}

@JsonSerializable()
class User {
  final String id;
  final String username;
  final String? email;

  User({required this.id, required this.username, this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

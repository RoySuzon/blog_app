import 'package:blog_app/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) => UserModel(
        id: map['id'] ?? "",
        email: map['email'] ?? "",
        name: map["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

import 'package:hw_dashboard_core/entities/user/role.dart';
import 'package:hw_dashboard_core/services/id_generator/id.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/syntax_sugar.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  const User({
    required this.id,
    required this.name,
    required this.role,
    required this.profileImage,
    required this.password,
  });

  factory User.fromJson(Json json) => _$UserFromJson(json);
  Json toJson() => _$UserToJson(this);

  final Id id;
  final String name;
  final Role role;
  final Uri profileImage;
  final String password;

  User copyWith({
    Id? id,
    String? name,
    Role? role,
    Uri? profileImage,
    String? password,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      password: password ?? this.password,
    );
  }

  bool isAdmin() => role == Role.admin;
  bool isNotAdmin() => role != Role.admin;
  bool isTeacher() => role == Role.teacher;
  bool isNotTeacher() => role != Role.teacher;
  bool isStudent() => role == Role.student;
  bool isNotStudent() => role != Role.student;
}

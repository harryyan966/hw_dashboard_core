// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: Id.fromJson(json['id'] as String),
      name: json['name'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      profileImage: Uri.parse(json['profileImage'] as String),
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'profileImage': instance.profileImage.toString(),
      'password': instance.password,
    };

const _$RoleEnumMap = {
  Role.student: 'student',
  Role.teacher: 'teacher',
  Role.admin: 'admin',
};

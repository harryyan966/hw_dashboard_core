// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      id: Id.fromJson(json['id'] as String),
      name: json['name'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      profileImage: Uri.parse(json['profileImage'] as String),
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'profileImage': instance.profileImage.toString(),
    };

const _$RoleEnumMap = {
  Role.student: 'student',
  Role.teacher: 'teacher',
  Role.admin: 'admin',
};

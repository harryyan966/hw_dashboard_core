import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/syntax_sugar.dart';

part 'user_info.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  const UserInfo({
    required this.id,
    required this.name,
    required this.role,
    required this.profileImage,
  });

  factory UserInfo.fromJson(Json json) => _$UserInfoFromJson(json);
  Json toJson() => _$UserInfoToJson(this);

  final Id id;
  final String name;
  final Role role;
  final Uri profileImage;
}

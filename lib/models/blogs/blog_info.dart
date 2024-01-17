import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/map/extension.dart';

part 'blog_info.g.dart';

@JsonSerializable(explicitToJson: true)
class BlogInfo {
  BlogInfo({
    required this.id,
    required this.title,
    required this.content,
    this.image,
    this.author,
  });

  factory BlogInfo.fromJson(Json json) => _$BlogInfoFromJson(json);
  Json toJson() => _$BlogInfoToJson(this);

  final Id id;
  final String title;
  final String content;
  final Uri? image;
  final UserInfo? author;
}

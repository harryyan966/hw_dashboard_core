import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/map/extension.dart';

part 'blog_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class BlogDetail {
  BlogDetail({
    required this.id,
    required this.title,
    required this.content,
    required this.images,
    this.author,
  });

  factory BlogDetail.fromJson(Json json) => _$BlogDetailFromJson(json);
  Json toJson() => _$BlogDetailToJson(this);

  final Id id;
  final String title;
  final String content;
  final List<Uri> images;
  final UserInfo? author;
}

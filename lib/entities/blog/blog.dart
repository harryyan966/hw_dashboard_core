import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/syntax_sugar.dart';

part 'blog.g.dart';

@JsonSerializable(explicitToJson: true)
class Blog {
  Blog({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    this.images = const [],
  }) {
    ValidationException.fromMap({
      'title': BlogValidators.title(title),
      'content': BlogValidators.content(content),
    }).throwIfNonEmpty();
  }

  factory Blog.fromJson(Json json) => _$BlogFromJson(json);
  Json toJson() => _$BlogToJson(this);

  final Id id;
  final String title;
  final Id author;
  final String content;
  final List<Uri> images;

  Blog copyWith({
    Id? id,
    String? title,
    Id? author,
    String? content,
    List<String>? imageURLs,
  }) {
    return Blog(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      author: author ?? this.author,
    );
  }
}

class BlogValidators {
  static final title = Validator.compose<String>([
    Validator.required(),
    Validator.maxLength(50),
  ]).validate;
  static final content = Validator.compose<String>([
    Validator.required(),
    Validator.maxLength(1000),
  ]).validate;
}

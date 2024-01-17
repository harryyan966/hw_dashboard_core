// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogDetail _$BlogDetailFromJson(Map<String, dynamic> json) => BlogDetail(
      id: Id.fromJson(json['id'] as String),
      title: json['title'] as String,
      content: json['content'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Uri.parse(e as String))
          .toList(),
      author: json['author'] == null
          ? null
          : UserInfo.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogDetailToJson(BlogDetail instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title,
      'content': instance.content,
      'images': instance.images.map((e) => e.toString()).toList(),
      'author': instance.author?.toJson(),
    };

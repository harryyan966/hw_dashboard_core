// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogInfo _$BlogInfoFromJson(Map<String, dynamic> json) => BlogInfo(
      id: Id.fromJson(json['id'] as String),
      title: json['title'] as String,
      content: json['content'] as String,
      image: json['image'] == null ? null : Uri.parse(json['image'] as String),
      author: json['author'] == null
          ? null
          : UserInfo.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogInfoToJson(BlogInfo instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title,
      'content': instance.content,
      'image': instance.image?.toString(),
      'author': instance.author?.toJson(),
    };

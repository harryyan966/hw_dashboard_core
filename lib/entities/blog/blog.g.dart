// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blog _$BlogFromJson(Map<String, dynamic> json) => Blog(
      id: Id.fromJson(json['id'] as String),
      title: json['title'] as String,
      content: json['content'] as String,
      author: Id.fromJson(json['author'] as String),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Uri.parse(e as String))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title,
      'author': instance.author.toJson(),
      'content': instance.content,
      'images': instance.images.map((e) => e.toString()).toList(),
    };

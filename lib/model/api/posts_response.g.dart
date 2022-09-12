// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsResponse _$$_PostsResponseFromJson(Map<String, dynamic> json) =>
    _$_PostsResponse(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_PostsResponseToJson(_$_PostsResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };

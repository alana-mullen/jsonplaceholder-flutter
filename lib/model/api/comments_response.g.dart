// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentsResponse _$$_CommentsResponseFromJson(Map<String, dynamic> json) =>
    _$_CommentsResponse(
      postId: json['postId'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_CommentsResponseToJson(_$_CommentsResponse instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };

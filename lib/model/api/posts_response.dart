import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_response.freezed.dart';
part 'posts_response.g.dart';

@freezed
abstract class PostsResponse with _$PostsResponse {
  const factory PostsResponse({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _PostsResponse;

  factory PostsResponse.fromJson(Map<String, dynamic> json) => _$PostsResponseFromJson(json);
}

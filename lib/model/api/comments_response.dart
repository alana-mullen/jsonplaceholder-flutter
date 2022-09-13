import 'package:freezed_annotation/freezed_annotation.dart';

part 'comments_response.freezed.dart';
part 'comments_response.g.dart';

@freezed
abstract class CommentsResponse with _$CommentsResponse {
  const factory CommentsResponse({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) = _CommentsResponse;

  factory CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseFromJson(json);
}

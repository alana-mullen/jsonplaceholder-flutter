import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder/model/api/comments_response.dart';

part 'comments_summary.freezed.dart';

@freezed
class CommentsSummary with _$CommentsSummary {
  const factory CommentsSummary({
    required int id,
    required String name,
    required String email,
    required String body,
  }) = _CommentsSummary;

  static CommentsSummary? _mapper(CommentsResponse comment) {
    int commentId = comment.id ?? 0;
    String commentName = comment.name ?? '';
    String commentEmail = comment.email ?? '';
    String commentBody = comment.body ?? '';
    return CommentsSummary(
        id: commentId,
        name: commentName,
        email: commentEmail,
        body: commentBody);
  }

  static List<CommentsSummary> mapper(List<CommentsResponse> comments) {
    var commentsList = comments.map((comment) {
      return CommentsSummary._mapper(comment);
    }).toList();
    return commentsList.whereType<CommentsSummary>().toList();
  }
}

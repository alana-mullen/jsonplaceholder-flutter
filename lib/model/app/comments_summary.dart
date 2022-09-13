import 'package:jsonplaceholder/model/api/comments_response.dart';

class CommentsSummary {
  //int? postId;
  int id;
  String name;
  String email;
  String body;

  CommentsSummary(this.id, this.name, this.email, this.body);

  static CommentsSummary? _mapper(CommentsResponse comment) {
    int commentId = comment.id ?? 0;
    String commentName = comment.name ?? '';
    String commentEmail = comment.email ?? '';
    String commentBody = comment.body ?? '';
    return CommentsSummary(commentId, commentName, commentEmail, commentBody);
  }

  static List<CommentsSummary> mapper(List<CommentsResponse> comments) {
    var commentsList = comments.map((comment) {
      return CommentsSummary._mapper(comment);
    }).toList();
    return commentsList.whereType<CommentsSummary>().toList();
  }
}

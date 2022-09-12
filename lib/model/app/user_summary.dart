import 'package:jsonplaceholder/model/api/posts_response.dart';

class UserSummary {
  int userId;
  int id;
  String title;
  String body;

  UserSummary(
      this.userId, this.id, this.title, this.body);

  static UserSummary? _from(PostsResponse posts) {
    int userId = posts.userId ?? 0;
    int postId = posts.id ?? 0;
    String postTitle = posts.title ?? '';
    String postBody = posts.body ?? '';
    if (postId == 0 || postTitle.isEmpty) return null;
    return UserSummary(userId, postId, postTitle, postBody);
  }

  static List<UserSummary> from(List<PostsResponse> launches) {
    var postsList = launches.map((launch) {
      return UserSummary._from(launch);
    }).toList();
    return postsList.whereType<UserSummary>().toList();
  }
}
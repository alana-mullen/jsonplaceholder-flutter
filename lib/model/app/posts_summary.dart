import 'package:jsonplaceholder/model/api/posts_response.dart';
import 'package:jsonplaceholder/model/api/users_response.dart';

class PostsSummary {
  int id;
  String title;
  String body;
  String userName;
  String userAvatar;

  PostsSummary(this.id, this.title, this.body, this.userName, this.userAvatar);

  // Parse the data we get from the REST API so we can make sure it's valid and
  // do any processing of the data before we use it in the UI.
  static PostsSummary? _mapper(PostsResponse post, List<UsersResponse> users) {
    int postId = post.id ?? 0;
    String postTitle = post.title ?? '';
    // If post is invalid return null so it can be filtered from list:
    if (postId == 0 || postTitle.isEmpty) return null;
    String postBody = post.body ?? '';
    var user = users.where((user) => user.id == post.userId);
    String userName = '';
    if (user.isNotEmpty) {
      userName = user.first.username ?? '';
    }
    // Placeholder image for the user avatar:
    String avatar = 'https://api.lorem.space/image/face?w=100&h=100';
    return PostsSummary(postId, postTitle, postBody, userName, avatar);
  }

  static List<PostsSummary> mapper(
      List<PostsResponse> launches, List<UsersResponse> users) {
    var postsList = launches.map((launch) {
      return PostsSummary._mapper(launch, users);
    }).toList();
    // Only return valid posts:
    return postsList.whereType<PostsSummary>().toList();
  }
}

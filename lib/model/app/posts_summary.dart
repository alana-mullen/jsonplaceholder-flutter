import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder/model/api/posts_response.dart';
import 'package:jsonplaceholder/model/api/users_response.dart';

part 'posts_summary.freezed.dart';

@freezed
class PostsSummary with _$PostsSummary {
  const factory PostsSummary({
    required int id,
    required String title,
    required String body,
    required String userId,
    required String userName,
    required String userAvatar,
  }) = _PostsSummary;

  // Parse the data we get from the REST API so we can make sure it's valid and
  // do any processing of the data before we use it in the UI.
  static PostsSummary? _mapper(PostsResponse post, List<UsersResponse> users) {
    int postId = post.id ?? 0;
    String postTitle = post.title ?? '';
    // If post is invalid return null so it can be filtered from list:
    if (postId == 0 || postTitle.isEmpty) return null;
    String postBody = post.body ?? '';
    var user = users.where((user) => user.id == post.userId);
    String userId = post.userId.toString();
    String userName = '';
    if (user.isNotEmpty) {
      userName = user.first.username ?? '';
    }
    // Placeholder image for the user avatar:
    String avatar = 'https://api.lorem.space/image/face?w=100&h=100';
    return PostsSummary(
        id: postId,
        title: postTitle,
        body: postBody,
        userId: userId,
        userName: userName,
        userAvatar: avatar);
  }

  static List<PostsSummary> mapper(
      List<PostsResponse> posts, List<UsersResponse> users) {
    var postsList = posts.map((post) {
      return PostsSummary._mapper(post, users);
    }).toList();
    // Only return valid posts:
    return postsList.whereType<PostsSummary>().toList();
  }
}

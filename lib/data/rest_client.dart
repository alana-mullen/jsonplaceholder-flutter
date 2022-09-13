import 'package:dio/dio.dart';
import 'package:jsonplaceholder/model/api/comments_response.dart';
import 'package:jsonplaceholder/model/api/posts_response.dart';
import 'package:jsonplaceholder/model/api/user_detail_response.dart';
import 'package:jsonplaceholder/model/api/users_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("posts")
  Future<List<PostsResponse>> getPosts(@Query("q") String query);

  @GET("users")
  Future<List<UsersResponse>> getUsers();

  @GET("users/{id}")
  Future<UserDetailResponse> getUser(@Path() String id);

  @GET("posts/{postId}/comments")
  Future<List<CommentsResponse>> getPostComments(@Path() String postId);
}

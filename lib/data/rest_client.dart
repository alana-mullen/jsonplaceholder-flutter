import 'package:dio/dio.dart';
import 'package:jsonplaceholder/model/api/posts_response.dart';
import 'package:jsonplaceholder/model/api/users_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("posts")
  Future<List<PostsResponse>> getPosts();

  @GET("users")
  Future<List<UsersResponse>> getUsers();
}

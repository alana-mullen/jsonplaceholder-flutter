import 'dart:async';

import 'package:dio/dio.dart';
import 'package:jsonplaceholder/bloc/bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/data/rest_client.dart';
import 'package:jsonplaceholder/model/api/posts_response.dart';
import 'package:jsonplaceholder/model/api/users_response.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';

class PostsSummaryBloc implements Bloc {
  late RestClient _client;
  StreamController<ApiResponse<List<PostsSummary>>>? _controller;

  StreamSink<ApiResponse<List<PostsSummary>>>? get sink => _controller?.sink;
  Stream<ApiResponse<List<PostsSummary>>>? get stream => _controller?.stream;

  PostsSummaryBloc() {
    _controller = StreamController<ApiResponse<List<PostsSummary>>>();
    _client = RestClient(Dio());
    fetchPosts();
  }

  fetchPosts() async {
    sink?.add(ApiResponse.loading("Fetching data"));
    try {
      List<UsersResponse> usersResponse = await _client.getUsers();
      List<PostsResponse> postsResponse = await _client.getPosts();
      var summary = PostsSummary.mapper(postsResponse, usersResponse);
      sink?.add(ApiResponse.completed(summary));
    } catch (ex) {
      sink?.add(ApiResponse.error(ex.toString()));
      print(ex);
    }
  }

  @override
  void dispose() {
    _controller?.close();
  }
}

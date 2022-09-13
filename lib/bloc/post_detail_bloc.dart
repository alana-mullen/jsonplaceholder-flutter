import 'dart:async';

import 'package:dio/dio.dart';
import 'package:jsonplaceholder/bloc/bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/data/rest_client.dart';
import 'package:jsonplaceholder/model/api/comments_response.dart';
import 'package:jsonplaceholder/model/api/user_detail_response.dart';
import 'package:jsonplaceholder/model/app/comments_summary.dart';
import 'package:jsonplaceholder/model/app/user_detail.dart';

class PostDetailBloc implements Bloc {
  late RestClient _client;
  StreamController<ApiResponse<List<CommentsSummary>>>? _commentsController;

  StreamSink<ApiResponse<List<CommentsSummary>>>? get commentsSink =>
      _commentsController?.sink;
  Stream<ApiResponse<List<CommentsSummary>>>? get commentsStream =>
      _commentsController?.stream;

  StreamController<ApiResponse<UserDetail>>? _userController;

  StreamSink<ApiResponse<UserDetail>>? get userSink => _userController?.sink;
  Stream<ApiResponse<UserDetail>>? get userStream => _userController?.stream;

  PostDetailBloc() {
    _commentsController =
        StreamController<ApiResponse<List<CommentsSummary>>>();
    _userController = StreamController<ApiResponse<UserDetail>>();
    _client = RestClient(Dio());
  }

  fetchComments(String postId) async {
    commentsSink?.add(ApiResponse.loading("Fetching data"));
    try {
      List<CommentsResponse> commentsResponse =
          await _client.getPostComments(postId);
      var summary = CommentsSummary.mapper(commentsResponse);
      commentsSink?.add(ApiResponse.completed(summary));
    } catch (ex) {
      commentsSink?.add(ApiResponse.error(ex.toString()));
      print(ex);
    }
  }

  fetchUser(String userId) async {
    userSink?.add(ApiResponse.loading("Fetching data"));
    try {
      UserDetailResponse userResponse = await _client.getUser(userId);
      var user = UserDetail.mapper(userResponse);
      userSink?.add(ApiResponse.completed(user));
    } catch (ex) {
      userSink?.add(ApiResponse.error(ex.toString()));
      print(ex);
    }
  }

  @override
  void dispose() {
    _commentsController?.close();
    _userController?.close();
  }
}

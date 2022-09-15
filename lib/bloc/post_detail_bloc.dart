import 'dart:async';

import 'package:dio/dio.dart';
import 'package:jsonplaceholder/bloc/bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/data/rest_client.dart';
import 'package:jsonplaceholder/model/api/comments_response.dart';
import 'package:jsonplaceholder/model/app/comments_summary.dart';

class PostDetailBloc implements Bloc {
  late RestClient _client;
  StreamController<ApiResponse<List<CommentsSummary>>>? _controller;

  StreamSink<ApiResponse<List<CommentsSummary>>>? get commentsSink =>
      _controller?.sink;
  Stream<ApiResponse<List<CommentsSummary>>>? get commentsStream =>
      _controller?.stream;

  PostDetailBloc() {
    _controller = StreamController<ApiResponse<List<CommentsSummary>>>();
    _client = RestClient(Dio());
  }

  fetchComments(String postId) async {
    if (_isDisposed) return; // Do nothing if already disposed
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

  bool _isDisposed = false;
  @override
  void dispose() {
    _controller?.close();
    _isDisposed = true;
  }
}

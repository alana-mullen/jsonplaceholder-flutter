import 'dart:async';

import 'package:dio/dio.dart';
import 'package:jsonplaceholder/bloc/bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/data/rest_client.dart';
import 'package:jsonplaceholder/model/api/user_detail_response.dart';
import 'package:jsonplaceholder/model/app/user_detail.dart';

class UserDetailBloc implements Bloc {
  late RestClient _client;

  StreamController<ApiResponse<UserDetail>>? _controller;

  StreamSink<ApiResponse<UserDetail>>? get sink => _controller?.sink;
  Stream<ApiResponse<UserDetail>>? get stream => _controller?.stream;

  UserDetailBloc() {
    _controller = StreamController<ApiResponse<UserDetail>>();
    _client = RestClient(Dio());
  }

  fetchUser(String userId) async {
    if (_isDisposed) return; // Do nothing if already disposed
    sink?.add(ApiResponse.loading("Fetching data"));
    try {
      UserDetailResponse userResponse = await _client.getUser(userId);
      var user = UserDetail.mapper(userResponse);
      sink?.add(ApiResponse.completed(user));
    } catch (ex) {
      sink?.add(ApiResponse.error(ex.toString()));
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

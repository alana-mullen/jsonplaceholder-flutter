import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jsonplaceholder/bloc/posts_summary_bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';
import 'package:jsonplaceholder/navigation/approute.dart';
import 'package:jsonplaceholder/ui/widget/error_screen.dart';
import 'package:jsonplaceholder/ui/widget/loading.dart';

class PostsSummaryScreen extends StatefulWidget {
  const PostsSummaryScreen({Key? key}) : super(key: key);

  @override
  State<PostsSummaryScreen> createState() => _PostsSummaryScreenState();
}

class _PostsSummaryScreenState extends State<PostsSummaryScreen> {
  late PostsSummaryBloc _bloc;
  TextEditingController editingController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    _bloc = PostsSummaryBloc();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  _refresh() {
    _bloc.fetchPosts('');
  }

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      _bloc.fetchPosts(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Posts'),
      ),
      body: RefreshIndicator(
        onRefresh: () => _refresh(),
        child: StreamBuilder<ApiResponse<List<PostsSummary>>>(
          stream: _bloc.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print("Stream ${snapshot.data!.status}");
              switch (snapshot.data?.status) {
                case Status.LOADING:
                  return const Loading(loadingMessage: "Loading");
                case Status.COMPLETED:
                  final List<PostsSummary>? items = snapshot.data?.data;
                  return _buildListView(context, items!);
                case Status.ERROR:
                  return ErrorScreen(
                      //error: snapshot.data!.message,
                      //onRetryPressed: () => _bloc.fetchRocket(forceRefresh: true),
                      );
                default:
                  return Container();
              }
            }
            return Container();
          },
        ),
      ),
    );
  }

  _buildListView(BuildContext context, List<PostsSummary> items) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            onChanged: (query) {
              _onSearchChanged(query);
            },
            controller: editingController,
            decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              return InkWell(
                child: _listItem(items[index]),
                onTap: () {
                  context.pushNamed(AppRoute.detail.name,
                      params: {'id': items[index].id.toString()},
                      extra: items[index]);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  _listItem(PostsSummary post) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Text(
                post.title,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Text(
                post.body,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Text(
                post.userName,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

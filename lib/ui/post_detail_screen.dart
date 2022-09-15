import 'package:flutter/material.dart';
import 'package:jsonplaceholder/bloc/post_detail_bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/model/app/comments_summary.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';
import 'package:jsonplaceholder/ui/widget/circle_image.dart';
import 'package:jsonplaceholder/ui/widget/error_screen.dart';
import 'package:jsonplaceholder/ui/widget/loading.dart';
import 'package:jsonplaceholder/ui/user_bottom_sheet.dart';

class PostDetailScreen extends StatefulWidget {
  final String postId;
  final PostsSummary post;
  const PostDetailScreen({Key? key, required this.postId, required this.post})
      : super(key: key);

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  late PostDetailBloc _bloc;

  @override
  void initState() {
    _bloc = PostDetailBloc();
    _bloc.fetchComments(widget.postId);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.post;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Post id: ${data.body}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: () => _openUserModal(context, data.userId),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleImage(
                          imageUrl: data.userAvatar,
                          imageSize: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            children: [
                              Text(
                                data.userName,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Text(
                      'Comments',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  _buildCommentsSection(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCommentsSection(BuildContext context) {
    return StreamBuilder<ApiResponse<List<CommentsSummary>>>(
      stream: _bloc.commentsStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          switch (snapshot.data?.status) {
            case Status.LOADING:
              return const Loading(loadingMessage: "Loading comments");
            case Status.COMPLETED:
              final List<CommentsSummary>? items = snapshot.data?.data;
              return _commentsList(context, items!);
            case Status.ERROR:
              return ErrorScreen();
            default:
              return Container();
          }
        }
        return Container();
      },
    );
  }

  _commentsList(BuildContext context, List<CommentsSummary> items) {
    return Expanded(
      child: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _commentItem(items[index]);
          },
          separatorBuilder: (context, index) {
            return const Divider();
          }),
    );
  }

  _commentItem(CommentsSummary comment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          comment.body,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
        Text(
          comment.name,
          style: const TextStyle(fontSize: 14, color: Colors.blueAccent),
        ),
      ],
    );
  }

  _openUserModal(BuildContext context, String userId) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: [
              UserBottomSheet(userId: userId),
            ],
          );
        });
  }
}

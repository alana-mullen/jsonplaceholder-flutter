import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:jsonplaceholder/bloc/post_detail_bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/model/app/comments_summary.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';
import 'package:jsonplaceholder/model/app/user_detail.dart';
import 'package:jsonplaceholder/ui/circle_image.dart';
import 'package:jsonplaceholder/ui/error_screen.dart';
import 'package:jsonplaceholder/ui/loading.dart';
import 'package:latlong2/latlong.dart';

class PostDetailScreen extends StatefulWidget {
  final String postId;
  //final String postTitle;
  final PostsSummary post;
  const PostDetailScreen({Key? key, required this.postId, required this.post})
      : super(key: key);

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  //bool shouldPop = true;
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
                    onTap: () => _openUserModal(context),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
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
      //mainAxisAlignment: MainAxisAlignment.start,
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

  _openUserModal(BuildContext context) {
    _bloc.fetchUser(widget.postId);
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StreamBuilder<ApiResponse<UserDetail>>(
            stream: _bloc.userStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                switch (snapshot.data?.status) {
                  case Status.LOADING:
                    return const Loading(loadingMessage: "Loading comments");
                  case Status.COMPLETED:
                    final UserDetail? userDetail = snapshot.data?.data;
                    return _userDetail(context, userDetail!);
                  case Status.ERROR:
                    return ErrorScreen();
                  default:
                    return Container();
                }
              }
              return Container();
            },
          );
        }).whenComplete(() => {
          //_bloc.dispose()
        });
  }

  _userDetail(BuildContext context, UserDetail userDetail) {
    double lat = userDetail.location?.latitude ?? 0.0;
    double lng = userDetail.location?.longitude ?? 0.0;
    return Column(
      children: [
        Text(userDetail.username),
        Text(userDetail.name),
        Text(userDetail.username),
        Text(userDetail.email),
        Text(userDetail.address),
        Visibility(
          visible: userDetail.location != null,
          child: SizedBox(
            height: 300,
            width: 300,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(lat, lng),
                zoom: 9.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'co.uk.thewirelessguy.jsonplaceholder',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

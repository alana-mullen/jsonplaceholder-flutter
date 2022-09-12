import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';
import 'package:jsonplaceholder/ui/circle_image.dart';

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
  bool shouldPop = true;

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
                children: [
                  Text(
                    'Post id: ${data.body}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

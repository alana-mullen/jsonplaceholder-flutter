import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';
import 'package:jsonplaceholder/navigation/approute.dart';
import 'package:jsonplaceholder/ui/post_detail_screen.dart';
import 'package:jsonplaceholder/ui/posts_summary_screen.dart';

/// Caches and Exposes a [GoRouter]
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/posts',
    debugLogDiagnostics: true,
    routes: _routes, // All the routes can be found there
  );
});

List<GoRoute> get _routes => [
      GoRoute(
          name: AppRoute.pages.name,
          path: '/posts',
          pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey, child: const PostsSummaryScreen())),
      GoRoute(
          name: AppRoute.detail.name,
          path: '/detail/:id',
          pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: PostDetailScreen(
                  postId: state.params['id']!,
                  //postTitle: state.params['title']!
                  post: state.extra! as PostsSummary)))
    ];

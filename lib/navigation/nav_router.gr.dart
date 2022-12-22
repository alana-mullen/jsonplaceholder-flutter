// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../model/app/posts_summary.dart' as _i5;
import '../ui/post_detail_screen.dart' as _i2;
import '../ui/posts_summary_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    PostsSummaryScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PostsSummaryScreen(),
      );
    },
    PostDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailScreenRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PostDetailScreen(
          key: args.key,
          postId: args.postId,
          post: args.post,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          PostsSummaryScreenRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          PostDetailScreenRoute.name,
          path: '/post-detail-screen',
        ),
      ];
}

/// generated route for
/// [_i1.PostsSummaryScreen]
class PostsSummaryScreenRoute extends _i3.PageRouteInfo<void> {
  const PostsSummaryScreenRoute()
      : super(
          PostsSummaryScreenRoute.name,
          path: '/',
        );

  static const String name = 'PostsSummaryScreenRoute';
}

/// generated route for
/// [_i2.PostDetailScreen]
class PostDetailScreenRoute
    extends _i3.PageRouteInfo<PostDetailScreenRouteArgs> {
  PostDetailScreenRoute({
    _i4.Key? key,
    required String postId,
    required _i5.PostsSummary post,
  }) : super(
          PostDetailScreenRoute.name,
          path: '/post-detail-screen',
          args: PostDetailScreenRouteArgs(
            key: key,
            postId: postId,
            post: post,
          ),
        );

  static const String name = 'PostDetailScreenRoute';
}

class PostDetailScreenRouteArgs {
  const PostDetailScreenRouteArgs({
    this.key,
    required this.postId,
    required this.post,
  });

  final _i4.Key? key;

  final String postId;

  final _i5.PostsSummary post;

  @override
  String toString() {
    return 'PostDetailScreenRouteArgs{key: $key, postId: $postId, post: $post}';
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:jsonplaceholder/ui/post_detail_screen.dart';
import 'package:jsonplaceholder/ui/posts_summary_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: PostsSummaryScreen, initial: true),
  AutoRoute(page: PostDetailScreen)
])
class $AppRouter {}

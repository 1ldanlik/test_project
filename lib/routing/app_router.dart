import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/screens/home_screen/home_screen.dart';
import 'package:test_project/screens/information_screen/information_screen.dart';

import 'app_routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>();
class AppRouter {
  GoRouter get router => _goRouter;

  late final _goRouter = GoRouter(
    navigatorKey: _navigatorKey,
    initialLocation: AppRoutes.home.toPath,
    routes: [
      GoRoute(
        path: AppRoutes.home.toPath,
        name: AppRoutes.home.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.information.toPath,
        name: AppRoutes.information.name,
        builder: (context, state) => InformationScreen(
          extra: state.extra,
        ),
      ),
    ],
  );
}

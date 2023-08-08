import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/widgets.dart';
import 'package:test_project/routing/domain/app_router_umbrella.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          path: HomeScreen.path,
        ),
        AutoRoute(
          page: InformationRoute.page,
          path: InformationScreen.path,
        ),
      ];
}

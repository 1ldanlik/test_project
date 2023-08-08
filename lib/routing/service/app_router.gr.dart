// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    InformationRoute.name: (routeData) {
      final args = routeData.argsAs<InformationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: InformationScreen(
          key: args.key,
          photo: args.photo,
          onFavoriteButtonTap: args.onFavoriteButtonTap,
        ),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = createHomeScreenWM,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.wmFactory = createHomeScreenWM,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [InformationScreen]
class InformationRoute extends PageRouteInfo<InformationRouteArgs> {
  InformationRoute({
    Key? key,
    required ValueListenable<PhotoModel> photo,
    required void Function(PhotoModel) onFavoriteButtonTap,
    List<PageRouteInfo>? children,
  }) : super(
          InformationRoute.name,
          args: InformationRouteArgs(
            key: key,
            photo: photo,
            onFavoriteButtonTap: onFavoriteButtonTap,
          ),
          initialChildren: children,
        );

  static const String name = 'InformationRoute';

  static const PageInfo<InformationRouteArgs> page =
      PageInfo<InformationRouteArgs>(name);
}

class InformationRouteArgs {
  const InformationRouteArgs({
    this.key,
    required this.photo,
    required this.onFavoriteButtonTap,
  });

  final Key? key;

  final ValueListenable<PhotoModel> photo;

  final void Function(PhotoModel) onFavoriteButtonTap;

  @override
  String toString() {
    return 'InformationRouteArgs{key: $key, photo: $photo, onFavoriteButtonTap: $onFavoriteButtonTap}';
  }
}

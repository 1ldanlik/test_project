enum AppRoutes {
  home,
  information,
}

extension AppPageExtension on AppRoutes {
  String get toPath {
    switch (this) {
      case AppRoutes.home:
        return '/';
      case AppRoutes.information:
        return '/information';
      default:
        return '/';
    }
  }
}

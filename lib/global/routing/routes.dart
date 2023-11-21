enum NamedRoutes { splash, login, home }

extension NamedRoutesData on NamedRoutes {
  String get path {
    switch (this) {
      case NamedRoutes.splash:
        return '/';
      case NamedRoutes.login:
        return '/login';
      case NamedRoutes.home:
        return '/home';
      default:
        return "/home";
    }
  }
}

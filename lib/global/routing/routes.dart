enum NamedRoutes { splash, login, home, transactions }

extension NamedRoutesData on NamedRoutes {
  String get path {
    switch (this) {
      case NamedRoutes.splash:
        return '/';
      case NamedRoutes.login:
        return '/login';
      case NamedRoutes.home:
        return '/home';
      case NamedRoutes.transactions:
        return 'transactions';
      default:
        return "/home";
    }
  }
}

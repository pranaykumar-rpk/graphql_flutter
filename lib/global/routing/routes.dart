enum NamedRoutes {
  splash,
  login,
  home,
  transactions,
  statements,
  contacts,
  pdfViewer
}

extension NamedRoutesData on NamedRoutes {
  String get path {
    switch (this) {
      case NamedRoutes.home:
        return '/';
      case NamedRoutes.login:
        return '/login';
      case NamedRoutes.transactions:
        return 'transactions';
      case NamedRoutes.statements:
        return 'statements';
      case NamedRoutes.contacts:
        return 'contacts';
      case NamedRoutes.pdfViewer:
        return 'pdfViewer';
      default:
        return "/";
    }
  }
}

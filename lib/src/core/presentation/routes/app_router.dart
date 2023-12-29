import 'package:auto_route/auto_route.dart';
import 'package:bund/src/core/presentation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', initial: true),
        AutoRoute(page: InvestmentRoute.page, path: '/investment'),
      ];
}

class AppRouterSingleton {
  static final AppRouterSingleton _instance = AppRouterSingleton._internal();
  late final AppRouter appRouter;

  factory AppRouterSingleton() {
    return _instance;
  }

  AppRouterSingleton._internal() {
    appRouter = AppRouter();
  }
}

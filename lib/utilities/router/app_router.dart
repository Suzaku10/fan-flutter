import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/domain/constant/app_pages.dart';
import 'package:fan_flutter/presentation/ui/auth/login_page.dart';
import 'package:fan_flutter/presentation/ui/auth/register_page.dart';
import 'package:fan_flutter/presentation/ui/home/home_page.dart';
import 'package:fan_flutter/utilities/router/guards.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final AppRouteGuard _guard;

  AppRouter(this._guard);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: AppPages.roots, page: HomeRoute.page, initial: true, guards: [_guard]),
    AutoRoute(path: AppPages.login, page: LoginRoute.page),
    AutoRoute(path: AppPages.register, page: RegisterRoute.page),
  ];
}
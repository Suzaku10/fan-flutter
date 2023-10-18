import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/domain/interface/i_prefs_service.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';

@injectable
class AppRouteGuard extends AutoRouteGuard {
  final IPrefsService _prefs;
  AppRouteGuard(this._prefs);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_prefs.isLoggedIn()) {
      resolver.next(true);
    } else {
      resolver.redirect(const LoginRoute());
    }
  }
}
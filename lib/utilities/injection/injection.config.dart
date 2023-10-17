// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../application/auth/auth_bloc.dart' as _i11;
import '../../domain/interface/i_auth.dart' as _i9;
import '../../domain/interface/i_prefs_service.dart' as _i5;
import '../../infrastructure/core/prefs_service.dart' as _i6;
import '../../infrastructure/core/register_module.dart' as _i12;
import '../../infrastructure/repository/auth_repository.dart' as _i10;
import '../router/app_router.dart' as _i8;
import '../router/guards.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
    await gh.lazySingletonAsync<_i4.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i5.IPrefsService>(
        () => _i6.PrefsService(gh<_i4.SharedPreferences>()));
    gh.factory<_i7.AppRouteGuard>(
        () => _i7.AppRouteGuard(gh<_i5.IPrefsService>()));
    gh.factory<_i8.AppRouter>(() => _i8.AppRouter(gh<_i7.AppRouteGuard>()));
    gh.lazySingleton<_i9.IAuth>(() => _i10.AuthRepository(
          gh<_i5.IPrefsService>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i9.IAuth>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}

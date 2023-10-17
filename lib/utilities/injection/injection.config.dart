// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../application/auth/auth_bloc.dart' as _i14;
import '../../domain/interface/i_auth.dart' as _i12;
import '../../domain/interface/i_prefs_service.dart' as _i8;
import '../../domain/interface/i_users.dart' as _i5;
import '../../infrastructure/core/prefs_service.dart' as _i9;
import '../../infrastructure/core/register_module.dart' as _i15;
import '../../infrastructure/repository/auth_repository.dart' as _i13;
import '../../infrastructure/repository/users_repository.dart' as _i6;
import '../router/app_router.dart' as _i11;
import '../router/guards.dart' as _i10;

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
    gh.lazySingleton<_i4.FirebaseFirestore>(() => registerModule.firestore);
    gh.lazySingleton<_i5.IUsers>(
        () => _i6.UsersRepository(gh<_i4.FirebaseFirestore>()));
    await gh.lazySingletonAsync<_i7.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i8.IPrefsService>(
        () => _i9.PrefsService(gh<_i7.SharedPreferences>()));
    gh.factory<_i10.AppRouteGuard>(
        () => _i10.AppRouteGuard(gh<_i8.IPrefsService>()));
    gh.factory<_i11.AppRouter>(() => _i11.AppRouter(gh<_i10.AppRouteGuard>()));
    gh.lazySingleton<_i12.IAuth>(() => _i13.AuthRepository(
          gh<_i8.IPrefsService>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(
          gh<_i12.IAuth>(),
          gh<_i5.IUsers>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}

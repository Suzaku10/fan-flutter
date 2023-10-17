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

import '../../application/auth/auth_bloc.dart' as _i15;
import '../../application/users/users_bloc.dart' as _i8;
import '../../domain/interface/i_auth.dart' as _i13;
import '../../domain/interface/i_prefs_service.dart' as _i9;
import '../../domain/interface/i_users.dart' as _i5;
import '../../infrastructure/core/prefs_service.dart' as _i10;
import '../../infrastructure/core/register_module.dart' as _i16;
import '../../infrastructure/repository/auth_repository.dart' as _i14;
import '../../infrastructure/repository/users_repository.dart' as _i6;
import '../router/app_router.dart' as _i12;
import '../router/guards.dart' as _i11;

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
    gh.factory<_i8.UsersBloc>(() => _i8.UsersBloc(gh<_i5.IUsers>()));
    gh.lazySingleton<_i9.IPrefsService>(
        () => _i10.PrefsService(gh<_i7.SharedPreferences>()));
    gh.factory<_i11.AppRouteGuard>(
        () => _i11.AppRouteGuard(gh<_i9.IPrefsService>()));
    gh.factory<_i12.AppRouter>(() => _i12.AppRouter(gh<_i11.AppRouteGuard>()));
    gh.lazySingleton<_i13.IAuth>(() => _i14.AuthRepository(
          gh<_i9.IPrefsService>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(
          gh<_i13.IAuth>(),
          gh<_i5.IUsers>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}

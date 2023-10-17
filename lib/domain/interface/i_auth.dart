import 'package:fan_flutter/domain/params/auth/login_params.dart';

abstract interface class IAuth {
  Future<bool> doRegister({required LoginParams params});

  Future<bool> doLogin({required LoginParams params});

  Future<bool> doLogout();

  Future<bool> saveCredential();

  Future<bool> sendVerificationEmail();

  Future<void> updateDisplayName({required String name});

  Future<void> resetPassword({required String email});
}
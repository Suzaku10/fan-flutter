import 'package:fan_flutter/domain/params/auth/login_params.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class IAuth {
  Future<bool> doRegister({required LoginParams params});

  Future<bool> doLogin({required LoginParams params});

  Future<bool> doLogout();

  Future<bool> saveCredential();

  Future<bool> sendVerificationEmail();

  Future<bool> updateDisplayName({required String name});

  Future<void> resetPassword({required String email});

  Future<User?> currentUser();
}
import 'package:fan_flutter/domain/interface/i_auth.dart';
import 'package:fan_flutter/domain/interface/i_prefs_service.dart';
import 'package:fan_flutter/domain/params/auth/login_params.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuth)
class AuthRepository implements IAuth {
  final IPrefsService _prefs;
  final FirebaseAuth _auth;

  AuthRepository(this._prefs, this._auth);

  @override
  Future<bool> doLogin({required LoginParams params}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: params.email!, password: params.password!);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> doLogout() async {
    try {
      await _auth.signOut();
      await _prefs.saveLoggedInStatus(false);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveCredential() async {
    try {
      await _prefs.saveLoggedInStatus(true);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> doRegister({required LoginParams params}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: params.email!, password: params.password!);
      return true;
    } catch (e){
      rethrow;
    }
  }

  @override
  Future<bool> sendVerificationEmail() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> updateDisplayName({required String name}) async {
    try {
      await _auth.currentUser?.updateDisplayName(name);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword({required String email}) async {
     try {
       await _auth.sendPasswordResetEmail(email: email);
     } catch (e) {
       rethrow;
     }
  }

  @override
  Future<User?> currentUser() async {
    try {
      return _auth.currentUser;
    } catch (e) {
      rethrow;
    }
  }
}
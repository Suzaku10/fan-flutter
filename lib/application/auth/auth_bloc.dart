import 'package:bloc/bloc.dart';
import 'package:fan_flutter/domain/interface/i_auth.dart';
import 'package:fan_flutter/domain/params/auth/login_params.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuth _auth;

  AuthBloc(this._auth) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
          onLogin: (v) async {
            emit(const _Loading());
            try {
              await _auth.doLogin(params: v.params);
              emit(const _LoginSuccess());
            } catch (e) {
              emit(_ShowMessage(e.toString()));
            }
          },
          onLogout: (v) async {
            emit(const _Loading());
            try {
              await _auth.doLogout();
              emit(const _LoginSuccess());
            } catch (e) {
              emit(_ShowMessage(e.toString()));
            }
          },
          onRegister: (v) async {
            emit(const _Loading());
            try {
              await _auth.doRegister(params: v.params);
              await _auth.updateDisplayName(name: v.name);
              await _auth.sendVerificationEmail();
              emit(const _RegisterSuccess());
            } catch (e) {
              emit(_ShowMessage(e.toString()));
            }
          },
          onResetPassword: (v) async {
            emit(const _Loading());
            try {
              await _auth.resetPassword(email: v.email);
              emit(const _ResetPasswordSuccess());
            } catch (e) {
              emit(_ShowMessage(e.toString()));
            }
          });
    });
  }
}

part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loginSuccess() = _LoginSuccess;
  const factory AuthState.logoutSuccess() = _LogoutSuccess;
  const factory AuthState.showMessage(String reason) = _ShowMessage;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.registerSuccess() = _RegisterSuccess;
  const factory AuthState.resetPasswordSuccess() = _ResetPasswordSuccess;
}
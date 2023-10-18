part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onLogin(LoginParams params) = _OnLogin;

  const factory AuthEvent.onLogout() = _OnLogout;

  const factory AuthEvent.onRegister({
    required LoginParams params,
    required String name,
  }) = _OnRegister;

  const factory AuthEvent.onResetPassword({required String email}) = _OnResetPassword;
}

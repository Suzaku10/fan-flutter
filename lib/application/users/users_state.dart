part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.showMessage(String reason) = _ShowMessage;
  const factory UsersState.loading() = _Loading;
  const factory UsersState.fetchSuccess(List<UserParams> data) = _FetchSuccess;
}
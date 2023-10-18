part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.onFetch({required FilterStatus status, required List<UserParams> data}) = _OnFetch;
}

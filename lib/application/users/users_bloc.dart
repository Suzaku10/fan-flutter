import 'package:bloc/bloc.dart';
import 'package:fan_flutter/domain/constant/app_enum.dart';
import 'package:fan_flutter/domain/interface/i_auth.dart';
import 'package:fan_flutter/domain/interface/i_users.dart';
import 'package:fan_flutter/domain/mapper/user_mapper.dart';
import 'package:fan_flutter/domain/params/users/user_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'users_bloc.freezed.dart';

part 'users_event.dart';

part 'users_state.dart';

@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final IUsers _users;
  final IAuth _auth;

  UsersBloc(this._users, this._auth) : super(const _Initial()) {
    on<UsersEvent>((event, emit) async {
      await event.map(onFetch: (v) async {
        emit(const _Loading());
        try {
          final result = await _users.fetchUsers(filter: v.status);
          final data = await _auth.currentUser();
          if (data?.emailVerified == true && userFromResponses(result).any((element) => element.email == (data?.email ?? ''))) {
            await _users.updateUser(
              params: userFromResponses(result).firstWhere((element) => element.email == (data?.email ?? '')).copyWith(
                    isVerified: data?.emailVerified ?? false,
                  ),
            );
            final updated = await _users.fetchUsers(filter: v.status);
            emit(UsersState.fetchSuccess(userFromResponses(updated), v.status));
          } else {
            emit(UsersState.fetchSuccess(userFromResponses(result), v.status));
          }
        } catch (e) {
          emit(_ShowMessage(e.toString()));
        }
      });
    });
  }
}

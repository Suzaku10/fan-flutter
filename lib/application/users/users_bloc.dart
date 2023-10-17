import 'package:bloc/bloc.dart';
import 'package:fan_flutter/domain/constant/app_enum.dart';
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

  UsersBloc(this._users) : super(const _Initial()) {
    on<UsersEvent>((event, emit) async {
      await event.map(onFetch: (v) async {
        emit(const _Loading());
         try {
           final result = await _users.fetchUsers(filter: v.status);
           emit(UsersState.fetchSuccess(userFromResponses(result)));
         } catch (e) {
           emit(_ShowMessage(e.toString()));
         }
      });
    });
  }
}

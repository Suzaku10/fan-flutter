import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fan_flutter/domain/constant/app_enum.dart';
import 'package:fan_flutter/domain/constant/app_strings.dart';
import 'package:fan_flutter/domain/interface/i_users.dart';
import 'package:fan_flutter/domain/params/users/user_params.dart';
import 'package:fan_flutter/domain/responses/users_responses.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUsers)
class UsersRepository implements IUsers {
  final FirebaseFirestore _store;

  UsersRepository(this._store);

  @override
  Future<QuerySnapshot<UsersResponses>> fetchUsers({required FilterStatus filter}) async {
    try {
      if (filter == FilterStatus.all) {
        final result = await _store
            .collection(AppStrings.appCollection)
            .withConverter<UsersResponses>(fromFirestore: (snapshots, _) => UsersResponses.fromJson(snapshots.data()!), toFirestore: (user, _) => user.toJson())
            .get();
        return result;
      } else {
        final result = await _store
            .collection(AppStrings.appCollection)
            .where('is_verified', isEqualTo: filter == FilterStatus.verified)
            .withConverter<UsersResponses>(fromFirestore: (snapshots, _) => UsersResponses.fromJson(snapshots.data()!), toFirestore: (user, _) => user.toJson())
            .get();
        return result;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> insertUser({required UserParams params}) async {
    try {
      await _store.collection(AppStrings.appCollection).add(params.toJson());
    } catch (e) {
      rethrow;
    }
  }
}

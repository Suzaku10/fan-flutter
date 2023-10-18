
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fan_flutter/domain/constant/app_enum.dart';
import 'package:fan_flutter/domain/params/users/user_params.dart';
import 'package:fan_flutter/domain/responses/users_responses.dart';

abstract interface class IUsers {
  Future<QuerySnapshot<UsersResponses>> fetchUsers({required FilterStatus filter});
  Future<void> insertUser({required UserParams params});
  Future<void> updateUser({required UserParams params});
}
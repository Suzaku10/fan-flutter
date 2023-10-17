import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fan_flutter/domain/params/users/user_params.dart';
import 'package:fan_flutter/domain/responses/users_responses.dart';

List<UserParams> userFromResponses(QuerySnapshot<UsersResponses> response) {
  List<UserParams> result = [];
  for (var item in response.docs) {
    final data = item.data();
    result.add(
      UserParams(
        id: item.id,
        email: data.email ?? "",
        isVerified: data.isVerified,
        createdAt: data.createdAt,
        updatedAt: data.updatedAt,
      ),
    );
  }
  return result;
}

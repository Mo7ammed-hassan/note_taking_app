import 'package:firebase_auth/firebase_auth.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';

UserEntity mapFirebaseUserToUserEntity(User? user) {
  return UserEntity(
    userName: user?.displayName ?? " ",
    email: user?.email ?? " ",
  );
}

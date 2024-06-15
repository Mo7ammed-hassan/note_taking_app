import 'package:dartz/dartz.dart';
import 'package:note_taking_app/core/helper/fire_base_auth_exaption.dart';
import 'package:note_taking_app/core/helper/map_fire_base_user_to_user_entity.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';
import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  // -- SIGN IN --
  @override
  Future<Either<Exception, UserEntity>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      // call sign in
      final UserCredential credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // pass user info from firebase to user entity
      final user = mapFirebaseUserToUserEntity(credential.user);

      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(handleFirebaseAuthException(e));
    } catch (e) {
      return Left(
        Exception('Sign up failed : $e'),
      );
    }
  }

  // -- SIGN UP --
  @override
  Future<Either<Exception, UserEntity>> signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      // call sign up
      final UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // update user name
      await credential.user!.updateDisplayName(userName);

      // pass user info from firebase to user entity
      final user = mapFirebaseUserToUserEntity(credential.user);

      return right(user);
    } on FirebaseAuthException catch (e) {
      return Left(handleFirebaseAuthException(e));
    } catch (e) {
      return Left(
        Exception('Sign up failed: $e'),
      );
    }
  }
}

// ignore_for_file: unused_local_variable

import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/auth/data/models/user_model.dart';
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
      // pass user info to model
      final userModel = UserModel(
        userName: 'testUser',
        email: email,
        password: password,
      );
      // pass data to UserEntity model
      final user = UserEntity(
        userName: 'testUser',
        email: email,
        password: password,
      );

      return Right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(
          Exception('No user found for that email.'),
        );
      } else if (e.code == 'wrong-password') {
        return Left(
          Exception('Wrong password provided for that user.'),
        );
      } else {
        return Left(
          Exception('Login failed'),
        );
      }
    } catch (e) {
      return Left(
        Exception('Sign up failed'),
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
      // pass user info to model
      final userModel = UserModel(
        userName: userName,
        email: email,
        password: password,
      );
      // pass data to UserEntity model
      final user = UserEntity(
        userName: userName,
        email: email,
        password: password,
      );
      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(
          Exception('The password provided is too weak.'),
        );
      } else if (e.code == 'email-already-in-use') {
        return Left(
          Exception('The email is already in use.'),
        );
      } else {
        return Left(
          Exception('Sign up failed'),
        );
      }
    } catch (e) {
      return Left(
        Exception('Sign up failed'),
      );
    }
  }
}

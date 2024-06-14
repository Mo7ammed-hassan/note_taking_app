import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  // login method
  Future<Either<Exception, UserEntity>> signIn({required String email,required String password});

  // Registration method
  Future<Either<Exception, UserEntity>> signUp({required String email,required String password});
}

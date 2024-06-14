import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';
import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Exception, UserEntity>> signIn(
      {required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserEntity>> signUp(
      {required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}

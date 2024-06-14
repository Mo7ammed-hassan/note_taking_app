import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';

abstract class SignInUseCases {
  Future<Either<Exception, UserEntity>> callSignIn(String email, String password);
 
}

abstract class SignUpUseCases {
  Future<Either<Exception, UserEntity>> callSignUp(String userName,String email, String password);
}

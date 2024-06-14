import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';
import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/use_cases.dart';

class SignInUseCase extends SignInUseCases {
  final AuthRepository authRepository;

  SignInUseCase(this.authRepository);

  @override
  Future<Either<Exception, UserEntity>> callSignIn(
      String email, String password) {
    return authRepository.signIn(email: email, password: password);
  }
}

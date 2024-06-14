import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';
import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/use_cases.dart';

class SignUpUseCase extends SignUpUseCases {
  final AuthRepository authRepository;

  SignUpUseCase(this.authRepository);

  @override
  Future<Either<Exception, UserEntity>> callSignUp(
      String userName, String email, String password) {
    return authRepository.signUp(
        userName: userName, email: email, password: password);
  }
}

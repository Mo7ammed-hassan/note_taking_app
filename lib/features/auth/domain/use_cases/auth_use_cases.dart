import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';

class AuthUseCases {
  final AuthRepository authRepository;

  AuthUseCases({required this.authRepository});

  // firsr user case
  Future<void> signIn(String email, String password) async {
    await authRepository.signIn(email: email, password: password);
  }

  // second user case
  Future<void> signUp(String email, String password) async {
    await authRepository.signUp(email: email, password: password);
  }
}

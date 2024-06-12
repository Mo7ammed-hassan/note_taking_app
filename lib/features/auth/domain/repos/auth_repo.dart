abstract class AuthRepository {
  // login method
  Future<void> signIn({String email, String password});

  // Registration method
  Future<void> signUp({String email, String password});
}

import 'package:get_it/get_it.dart';
import 'package:note_taking_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';

final gitIt = GetIt.instance;

void setupDependencies() {
  // Register the AuthRepository as a singleton
  gitIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  // Register the use cases with the AuthRepository singleton
  gitIt.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(gitIt<AuthRepository>()),
  );
  gitIt.registerLazySingleton<SignUpUseCase>(
    () => SignUpUseCase(gitIt<AuthRepository>()),
  );
}

import 'package:get_it/get_it.dart';
import 'package:note_taking_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';

final gitIt = GetIt.instance;

void setupDependencies() {
  gitIt.registerSingleton<SignInUseCase>(
    SignInUseCase(
      AuthRepositoryImpl(),
    ),
  );
  gitIt.registerSingleton<SignUpUseCase>(
    SignUpUseCase(
      AuthRepositoryImpl(),
    ),
  );
}

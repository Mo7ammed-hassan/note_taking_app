import 'package:get_it/get_it.dart';
import 'package:note_taking_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:note_taking_app/features/auth/domain/repos/auth_repo.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';
import 'package:note_taking_app/features/home/data/data_sources/home_local_data_source_impl.dart';
import 'package:note_taking_app/features/home/data/repos/home_repo_impl.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_case_imp.dart';

final gitIt = GetIt.instance;

void setupDependencies() {
  // Register the AuthRepository as a lazy singleton
  gitIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  // Register the use cases with the AuthRepository singleton
  gitIt.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(gitIt<AuthRepository>()),
  );
  gitIt.registerLazySingleton<SignUpUseCase>(
    () => SignUpUseCase(gitIt<AuthRepository>()),
  );

  // Register HomeUseCaseImpl with dependencies
  gitIt.registerSingleton<HomeUseCaseImpl>(
    HomeUseCaseImpl(
      HomeRepoImpl(
        homeLocalDataSource: HomeLocalDataSourceImpl(),
      ),
    ),
  );
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/features/auth/domain/entities/user_entity.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.signInUseCase, this.signUpUseCase) : super(AuthInitial());
  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;

  // -- SIGN IN --
  Future<void> signIn(String email, String password) async {
    // Loading ..
    emit(AuthLoading());

    // result of sign in ..
    final result = await signInUseCase.callSignIn(email, password);
    result.fold(
      (error) => emit(AuthFailure(error.toString())),
      (user) => emit(
        AuthSuccess(user: user),
      ),
    );
  }

  // -- SIGN UP --

  Future<void> signUp(String userName, String email, String password) async {
    // Loading ..
    emit(AuthLoading());

    // result of sign up ..
    final result = await signUpUseCase.callSignUp(userName, email, password);
    result.fold(
      (error) => emit(AuthFailure(error.toString())),
      (user) => emit(
        AuthSuccess(user: user),
      ),
    );
  }
}

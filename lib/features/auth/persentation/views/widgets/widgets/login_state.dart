import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/core/utils/functions/build_show_snak_bar.dart';
import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';
import 'package:note_taking_app/features/auth/persentation/views/widgets/widgets/login_form.dart';

class LoginState extends StatelessWidget {
  const LoginState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          showSnakBar(context, title: 'Success Login');
        } else if (state is AuthFailure) {
          showSnakBar(context, title: state.error);
        }
      },
      child: const LoginForm(),
    );
  }
}

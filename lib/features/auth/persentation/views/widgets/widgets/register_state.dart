import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/functions/build_show_snak_bar.dart';

import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';
import 'package:note_taking_app/features/auth/persentation/views/widgets/widgets/register_form.dart';

class RegisterState extends StatelessWidget {
  const RegisterState({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          showSnakBar(context, title: 'Register success');
          Future.delayed(const Duration(milliseconds: 350), () {
            GoRouter.of(context).push('/home');
          });
        } else if (state is AuthFailure) {
          showSnakBar(context, title: state.error);
        }
      },
      child: const RegisterForm(),
    );
  }
}

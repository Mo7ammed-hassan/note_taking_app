import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_taking_app/features/auth/persentation/views/widgets/widgets/login_state.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 40), // 50
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: LoginState(),
          ),
        ],
      ),
    );
  }
}

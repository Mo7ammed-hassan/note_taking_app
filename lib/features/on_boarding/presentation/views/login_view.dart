import 'package:flutter/material.dart';

import 'package:note_taking_app/core/utils/functions/build_appbar.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Log in'),
      body: const LoginViewBody(),
    );
  }
}

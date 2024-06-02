import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/functions/build_appbar.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Sign up'),
      body: const RegisterViewBody(),
    );
  }
}

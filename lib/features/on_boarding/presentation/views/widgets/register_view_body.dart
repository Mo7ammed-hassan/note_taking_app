import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/widgets/register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: RegisterForm(),
          ),
        ],
      ),
    );
  }
}

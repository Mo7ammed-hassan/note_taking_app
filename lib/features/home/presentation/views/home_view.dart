import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/core/helper/services_locator.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/widgets/change_floating_action_btn_location.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_case_imp.dart';
import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:note_taking_app/features/home/presentation/views/custom_btn_app_bar.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Provid HomeCubit
    return BlocProvider(
      create: (context) => HomeCubit(
        gitIt.get<HomeUseCaseImpl>(),
      ),
      child: Scaffold(
        body: const SafeArea(
          child: HomeViewBody(),
        ),
        floatingActionButtonLocation: customFloatingActionButtonLocation(-20.0),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: AppColors.primaryColor,
          onPressed: () async {},
          child: const Icon(
            Icons.add,
            size: 28,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
          child: const CustomBtnAppBar(),
        ),
      ),
    );
  }
}

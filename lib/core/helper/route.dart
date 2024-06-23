import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/helper/services_locator.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';
import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_case_imp.dart';
import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:note_taking_app/features/home/presentation/views/home_view.dart';
import 'package:note_taking_app/features/notes/presentation/views/personal_note_view.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/add_note_view.dart';
import 'package:note_taking_app/features/notes/presentation/views/work_note_view.dart';
import 'package:note_taking_app/features/auth/persentation/views/register_view.dart';
import 'package:note_taking_app/features/auth/persentation/views/login_view.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/walkthough_view.dart';
import 'package:note_taking_app/features/splash/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SplashView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/walkthoughView',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 1000),
        key: state.pageKey,
        child: const WalkthoughView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.linear)),
            ),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        key: state.pageKey,
        child: BlocProvider(
          create: (context) => AuthCubit(
            gitIt<SignInUseCase>(),
            gitIt<SignUpUseCase>(),
          ),
          child: const LoginView(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.linear)),
            ),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        child: BlocProvider(
          create: (context) => AuthCubit(
            gitIt<SignInUseCase>(),
            gitIt<SignUpUseCase>(),
          ),
          child: const RegisterView(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.linear)),
          ),
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        key: state.pageKey,
        child: BlocProvider(
          create: (context) => HomeCubit(
            gitIt<HomeUseCaseImpl>(),
          ),
          child: const HomeView(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.linear)),
            ),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/workNotes',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        key: state.pageKey,
        child: const WorkNoteView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.linear)),
            ),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/personalNotes',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        key: state.pageKey,
        child: const PersonalNoteView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.linear)),
            ),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/addNote',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        key: state.pageKey,
        child: const AddNoteView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.linear)),
            ),
            child: child,
          );
        },
      ),
    ),
  ],
);

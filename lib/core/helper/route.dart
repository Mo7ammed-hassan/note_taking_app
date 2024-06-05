import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/features/home/presentation/views/home_view.dart';
import 'package:note_taking_app/features/notes/presentation/views/personal_note_view.dart';
import 'package:note_taking_app/features/notes/presentation/views/work_note_view.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/register_view.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/login_view.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/walkthough_view.dart';
import 'package:note_taking_app/features/splash/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const WorkNoteView(),
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
        child: const LoginView(),
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
        child: const RegisterView(),
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
        child: const HomeView(),
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
      path: '/notes',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 450),
        key: state.pageKey,
        child: const NoteView(),
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
      path: '/workNote',
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
  ],
);

import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/features/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Taking',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cardBodyColor),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}


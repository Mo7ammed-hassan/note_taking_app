import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/core/helper/route.dart';
import 'package:note_taking_app/core/helper/services_locator.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';
import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Note Taking',
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        //iconTheme: IconThemeData(color: AppColors.primaryColor),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(
              AppColors.primaryColor,
            ),
          ),
        ),
        //useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

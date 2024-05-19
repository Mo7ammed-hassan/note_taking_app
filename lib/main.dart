import 'package:flutter/material.dart';
import 'package:note_taking_app/core/helper/route.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';

void main() {
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
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        //useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/helper/bloc_observer.dart';
import 'package:note_taking_app/core/helper/route.dart';
import 'package:note_taking_app/core/helper/services_locator.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_in.dart';
import 'package:note_taking_app/features/auth/domain/use_cases/sign_up.dart';
import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );
  // --call Singleton--
  setupDependencies();
  // --Init Hive--
  await Hive.initFlutter();
  // --Rigester NotemModel--
  Hive.registerAdapter(NoteModelAdapter());
  // --Open Sections Box--
  await Hive.openBox(sectionsBox);
  // --call BlocObserver--
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(
            gitIt<SignInUseCase>(),
            gitIt<SignUpUseCase>(),
          ),
        ),
      ],
      child: MaterialApp.router(
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
      ),
    );
  }
}

import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/home/logic/specialization_cubit/cubit/specialization_cubit.dart';
import 'package:doctor_app/features/home/ui/home_screen.dart';
import 'package:doctor_app/features/login/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_app/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:doctor_app/features/sign_up/logic/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SpecializationCubit>()..getSpecialization(),
            child: const HomeScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
              child: const SignUpScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Route"),
            ),
          ),
        );
    }
  }
}

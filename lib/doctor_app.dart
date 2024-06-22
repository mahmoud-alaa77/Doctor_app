import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;

  const DoctorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
        theme: ThemeData(
            primaryColor: AppColors.mainBlue,
            scaffoldBackgroundColor: Colors.white),
      ),
    );
  }
}

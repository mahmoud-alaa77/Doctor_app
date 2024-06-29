import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/helper/constants.dart';
import 'package:doctor_app/core/helper/extensions.dart';
import 'package:doctor_app/core/helper/shared_pref_helper.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helper/my_bloc_obsever.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();

  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIFLogInUser();

  Bloc.observer = SimpleBlocObserver();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}


 checkIFLogInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  // ignore: unnecessary_null_comparison
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}


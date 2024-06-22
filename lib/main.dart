import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/helper/my_bloc_obsever.dart';

void main() {
  setUpGetIt();
  Bloc.observer = SimpleBlocObserver();
  runApp( DoctorApp(
    appRouter: AppRouter(),
  ));
}


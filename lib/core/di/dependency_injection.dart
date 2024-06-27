import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/home/data/repos/home_repo.dart';
import 'package:doctor_app/features/home/logic/specialization_cubit/cubit/specialization_cubit.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctor_app/features/sign_up/logic/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  //api services && Dio

  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //sign up

  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

//home

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<SpecializationCubit>(() => SpecializationCubit(getIt()));

}

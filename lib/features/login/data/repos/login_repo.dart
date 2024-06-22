import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctor_app/core/errors/failure.dart';
import 'package:doctor_app/core/errors/server_failure.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/features/login/data/models/response_model.dart';

import '../models/request_model.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<Either<Failure, ResponseModel>> login(
      RequestModel requestModel) async {
    try {
      final response = await _apiServices.login(requestModel);
      return right(response);
    } catch (error) {

      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString() ?? ''));
    }



  }
}

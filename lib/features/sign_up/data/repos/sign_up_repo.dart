

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctor_app/core/errors/server_failure.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_response_body.dart';

class SignUpRepo{

 final ApiServices _apiServices;

  SignUpRepo(this._apiServices);

  Future<Either<ServerFailure,SignUpResponseBody>> signUp(SignUpRequestBody requestBody)async{

    try{
      var response =await _apiServices.signUp(requestBody);
      return right(response);
    }catch(error){
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString() ?? ''));
    }
    }

  }


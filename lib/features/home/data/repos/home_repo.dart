import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctor_app/core/errors/failure.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';

import '../../../../core/errors/server_failure.dart';

class HomeRepo {
  final ApiServices _apiServices;

  HomeRepo( this._apiServices);


Future<Either<Failure,SpecializationResponseModel>> getSpecialization()async{

try{
var response=await _apiServices.getSpecialization();
return right(response);
}catch(error){
if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));

}

}

}

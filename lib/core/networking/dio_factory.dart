import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addHeaders()  {
    dio?.options.headers = {
      "Accept":"application/json",
      "Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzE5NTI4NzAwLCJleHAiOjE3MTk2MTUxMDAsIm5iZiI6MTcxOTUyODcwMCwianRpIjoiOFhzSHQydmRXZ1RDRnZPOSIsInN1YiI6IjE0NDkiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.9yRi0IZlJ5Suz-8VxlTNCEBwLe4tFHinAzxls1Q2gZM"
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}

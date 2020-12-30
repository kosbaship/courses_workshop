import 'package:dio/dio.dart';

class DioHelper {
  // initialize yourself
  static Dio dio;

  // create the static constructor this way
  DioHelper() {
    dio = Dio(
      BaseOptions(
        baseUrl: "http://softagic.wwwnl1-ss19.a2hosted.com/",
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
  }

  static Future<Response> postData({path, data, token}) async {
    if (token != null) {
      dio.options.headers = {
        'Authorization': 'Bearer $token',
      };
    }

    return await dio.post(path, data: data);
  }
}

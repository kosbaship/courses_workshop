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
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjQxNjRmZGMwYzAzYTk5NmI0NGQ4NDYxZWFiZjZhZWU3OTY3MTg4YjVkMzNmY2E1Y2RlY2Q5NThjNzgyODVlZmIwYTQyNzQ4NjhmNDE4ZjA2In0.eyJhdWQiOiIxIiwianRpIjoiNDE2NGZkYzBjMDNhOTk2YjQ0ZDg0NjFlYWJmNmFlZTc5NjcxODhiNWQzM2ZjYTVjZGVjZDk1OGM3ODI4NWVmYjBhNDI3NDg2OGY0MThmMDYiLCJpYXQiOjE2MDU4ODQwMjMsIm5iZiI6MTYwNTg4NDAyMywiZXhwIjoxNjM3NDIwMDIyLCJzdWIiOiI0OTIiLCJzY29wZXMiOltdfQ.C4Ou7-z8jQw3dBeKVQj__nVyD76avlpS0QWrme5FnS3XlqlPL3X1_Ta5DjCTxEu2dVfvsy94uVefpXeFk0k7nHUazMd5dfE3ZYzzosFmxpmACFvU7YIL0aszVMWKyxJV28vLS6MfI2CBQgYJGK08XRjIxo8WEIq-6ZSRjkh7xWmO375ajqkqXi2PDVuGBdkwiYlA57NRfLl3ptMmU8u-XN2nHDkVNqlG6uWFe4qnPdQNhY-mSKiqnH-9E5zqQ4e6PobvC7qcoR-w0HxorXNwOJuYwQlpxPleJIyXx7UFxuZLOi5kH262kSdt5JYdQ6e55hTE_-FHxzlLsT-JJC5JhD8uSrPG_yh5gnMimmLfwY4cXH5YGmVVQQYRs_aOEOuNOQZGKmICuGKf3ZZaAYNtdwaFzYtpMdBFMOH16Ehpe5oSzO3oENTUuaemdsM0fuS8kDpb8LQvGbelTZiYQeV-hsOw_AIL2FQNgqPmg4UOmPuN0IWkZpyf2745H7Bhzgl9DRuZQgcua0Ja1QPHy8cEVFWpkVWsZB1RrkuiR7bvCjRks1a8LAiC39hw4N2eOIAk-kbBqCTk_0zWw61or-aYeGAuG-yUtq7_Y15lXSMIxCRfoQe6vRqoq7qmWtVORV9pIWXnbuhT5swqYUuQL-Adcf-Nnrn5CllIGtWSl7Rjc1c',
        },
      ),
    );
  }

  static Future<Response> postData({path, data}) async {
    return await dio.post(path, data: data);
  }
}

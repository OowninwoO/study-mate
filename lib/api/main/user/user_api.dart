import 'package:dio/dio.dart';
import 'package:study_mate/api/main/main_dio_client.dart';

class UserApi {
  static Future<dynamic> login() async {
    final response = await MainDioClient.dio.post(
      '/user/login',
      options: Options(extra: {'caller': 'UserApi.login'}),
    );

    return response.data;
  }
}

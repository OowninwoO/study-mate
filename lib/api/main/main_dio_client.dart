import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:study_mate/services/auth_service.dart';

class MainDioClient {
  static final Dio dio =
      Dio(
          BaseOptions(
            baseUrl: dotenv.env['MAIN_API_BASE_URL']!,
            connectTimeout: const Duration(seconds: 10),
            sendTimeout: const Duration(minutes: 1),
            receiveTimeout: const Duration(minutes: 1),
            headers: {'Content-Type': 'application/json'},
          ),
        )
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) async {
              final token = await AuthService.idToken;
              if (token != null) {
                options.headers['idToken'] = token;
              }

              final caller = options.extra['caller'] ?? 'unknown';
              print(
                '[MAIN][REQ][$caller] ${options.method} ${options.baseUrl}${options.path}',
              );

              handler.next(options);
            },
            onResponse: (response, handler) {
              final caller =
                  response.requestOptions.extra['caller'] ?? 'unknown';
              print('[MAIN][RES][$caller] ${response.data}');

              handler.next(response);
            },
            onError: (e, handler) {
              final caller = e.requestOptions.extra['caller'] ?? 'unknown';
              print('[MAIN][ERR][$caller] ${e.response?.data ?? e.message}');

              handler.next(e);
            },
          ),
        );
}

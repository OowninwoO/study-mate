import 'package:logger/logger.dart';

class LoggerUtil {
  LoggerUtil._();

  static final Logger _logger = Logger(
    filter: DevelopmentFilter(),
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 2,
      lineLength: 120,
      colors: true,
      printEmojis: false,
    ),
  );

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void e(dynamic message) {
    _logger.e(message);
  }
}

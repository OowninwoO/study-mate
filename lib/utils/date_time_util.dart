import 'package:intl/intl.dart';

class DateTimeUtil {
  DateTimeUtil._();

  static String formatDate(DateTime dateTime) {
    return DateFormat('yyyy.MM.dd').format(dateTime);
  }

  static String formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy.MM.dd HH:mm').format(dateTime);
  }
}

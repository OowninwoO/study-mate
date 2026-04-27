import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:study_mate/api/main/main_dio_client.dart';

class QuizApi {
  static Future<dynamic> uploadPdf({required PlatformFile pdf}) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(pdf.path!, filename: pdf.name),
    });

    final response = await MainDioClient.dio.post(
      '/quiz/pdf',
      data: formData,
      options: Options(extra: {'caller': 'QuizApi.uploadPdf'}),
    );

    return response.data;
  }
}

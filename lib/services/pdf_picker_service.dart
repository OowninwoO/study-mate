import 'package:file_picker/file_picker.dart';

class PdfPickerService {
  static Future<PlatformFile?> pickPdf() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      withData: false,
    );

    if (result == null || result.files.isEmpty) {
      return null;
    }

    return result.files.single;
  }
}

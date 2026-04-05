import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study_mate/api/main/quiz_api.dart';
import 'package:study_mate/models/quiz/quiz_set_model.dart';

part 'quiz_set_list_provider.g.dart';

@Riverpod(keepAlive: true)
class QuizSetList extends _$QuizSetList {
  @override
  List<QuizSetModel> build() {
    return [];
  }

  Future<void> generateQuiz(PlatformFile pdf) async {
    final res = await QuizApi.uploadPdf(pdf: pdf);
    final data = res['data'];
    final quizSet = QuizSetModel.fromJson(data);
    state = [quizSet, ...state];
  }

  void removeQuizSet(QuizSetModel quizSet) {
    state = state.where((e) => e.createdAt != quizSet.createdAt).toList();
  }

  void clearQuizSets() {
    state = [];
  }
}

import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study_mate/api/main/quiz_api.dart';
import 'package:study_mate/models/quiz/quiz_set_model.dart';

part 'quiz_set_list_provider.g.dart';

@riverpod
class QuizSetList extends _$QuizSetList {
  @override
  FutureOr<List<QuizSetModel>> build() {
    return [];
  }

  Future<void> generateQuiz(PlatformFile pdf) async {
    final current = state.value;
    if (current == null) return;

    state = const AsyncLoading();

    try {
      final quizSet = await QuizApi.uploadPdf(pdf: pdf);
      state = AsyncData([quizSet, ...current]);
    } catch (e) {
      state = AsyncData(current);
    }
  }

  void addQuizSet(QuizSetModel quizSet) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData([quizSet, ...current]);
  }

  void removeQuizSet(QuizSetModel quizSet) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.where((e) => e.createdAt != quizSet.createdAt).toList(),
    );
  }

  void clearQuizSets() {
    state = const AsyncData([]);
  }
}

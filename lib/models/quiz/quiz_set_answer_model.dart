import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study_mate/models/quiz/quiz_item_answer_model.dart';

part 'quiz_set_answer_model.freezed.dart';
part 'quiz_set_answer_model.g.dart';

@freezed
abstract class QuizSetAnswerModel with _$QuizSetAnswerModel {
  const factory QuizSetAnswerModel({
    required String quizSetId,
    required List<QuizItemAnswerModel> answers,
    required int solvingTime,
    required DateTime createdAt,
  }) = _QuizSetAnswerModel;

  factory QuizSetAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$QuizSetAnswerModelFromJson(json);
}

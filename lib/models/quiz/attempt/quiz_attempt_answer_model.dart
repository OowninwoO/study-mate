import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_attempt_answer_model.freezed.dart';
part 'quiz_attempt_answer_model.g.dart';

@freezed
abstract class QuizAttemptAnswerModel with _$QuizAttemptAnswerModel {
  const factory QuizAttemptAnswerModel({
    required String id,
    required String attemptId,
    required String quizItemId,
    required int? selectedAnswer,
  }) = _QuizAttemptAnswerModel;

  factory QuizAttemptAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$QuizAttemptAnswerModelFromJson(json);
}

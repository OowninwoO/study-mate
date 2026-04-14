import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_attempt_model.freezed.dart';
part 'quiz_attempt_model.g.dart';

@freezed
abstract class QuizAttemptModel with _$QuizAttemptModel {
  const factory QuizAttemptModel({
    required String id,
    required String userId,
    required String quizSetId,
    required int solvingTime,
    required DateTime createdAt,
  }) = _QuizAttemptModel;

  factory QuizAttemptModel.fromJson(Map<String, dynamic> json) =>
      _$QuizAttemptModelFromJson(json);
}

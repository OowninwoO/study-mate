import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_item_answer_model.freezed.dart';
part 'quiz_item_answer_model.g.dart';

@freezed
abstract class QuizItemAnswerModel with _$QuizItemAnswerModel {
  const factory QuizItemAnswerModel({
    required String quizItemId,
    required int? selectedAnswer,
  }) = _QuizItemAnswerModel;

  factory QuizItemAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$QuizItemAnswerModelFromJson(json);
}

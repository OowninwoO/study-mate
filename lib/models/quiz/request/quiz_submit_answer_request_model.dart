import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_submit_answer_request_model.freezed.dart';
part 'quiz_submit_answer_request_model.g.dart';

@freezed
abstract class QuizSubmitAnswerRequestModel
    with _$QuizSubmitAnswerRequestModel {
  const factory QuizSubmitAnswerRequestModel({
    required String quizItemId,
    required int? selectedAnswer,
  }) = _QuizSubmitAnswerRequestModel;

  factory QuizSubmitAnswerRequestModel.fromJson(Map<String, dynamic> json) =>
      _$QuizSubmitAnswerRequestModelFromJson(json);
}

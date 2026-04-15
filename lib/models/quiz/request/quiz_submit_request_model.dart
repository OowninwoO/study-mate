import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study_mate/models/quiz/request/quiz_submit_answer_request_model.dart';

part 'quiz_submit_request_model.freezed.dart';
part 'quiz_submit_request_model.g.dart';

@freezed
abstract class QuizSubmitRequestModel with _$QuizSubmitRequestModel {
  const factory QuizSubmitRequestModel({
    required String quizSetId,
    required int solvingTime,
    required List<QuizSubmitAnswerRequestModel> answers,
  }) = _QuizSubmitRequestModel;

  factory QuizSubmitRequestModel.fromJson(Map<String, dynamic> json) =>
      _$QuizSubmitRequestModelFromJson(json);
}

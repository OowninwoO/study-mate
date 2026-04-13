import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study_mate/models/quiz/quiz_item_model.dart';

part 'quiz_set_model.freezed.dart';
part 'quiz_set_model.g.dart';

@freezed
abstract class QuizSetModel with _$QuizSetModel {
  const factory QuizSetModel({
    required String id,
    required String sourceTitle,
    required List<QuizItemModel> quizzes,
    required DateTime createdAt,
  }) = _QuizSetModel;

  factory QuizSetModel.fromJson(Map<String, dynamic> json) =>
      _$QuizSetModelFromJson(json);
}

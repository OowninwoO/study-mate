import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_item_model.freezed.dart';
part 'quiz_item_model.g.dart';

@freezed
abstract class QuizItemModel with _$QuizItemModel {
  const factory QuizItemModel({
    required String id,
    required String quizSetId,
    required int questionNumber,
    required String question,
    required List<String> options,
    required int answerIndex,
    required String explanation,
  }) = _QuizItemModel;

  factory QuizItemModel.fromJson(Map<String, dynamic> json) =>
      _$QuizItemModelFromJson(json);
}

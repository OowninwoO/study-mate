// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_item_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizItemAnswerModel _$QuizItemAnswerModelFromJson(Map<String, dynamic> json) =>
    _QuizItemAnswerModel(
      quizItemId: json['quizItemId'] as String,
      selectedAnswer: (json['selectedAnswer'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuizItemAnswerModelToJson(
  _QuizItemAnswerModel instance,
) => <String, dynamic>{
  'quizItemId': instance.quizItemId,
  'selectedAnswer': instance.selectedAnswer,
};

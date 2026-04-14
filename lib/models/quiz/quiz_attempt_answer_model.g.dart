// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_attempt_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizAttemptAnswerModel _$QuizAttemptAnswerModelFromJson(
  Map<String, dynamic> json,
) => _QuizAttemptAnswerModel(
  id: json['id'] as String,
  attemptId: json['attemptId'] as String,
  quizItemId: json['quizItemId'] as String,
  selectedAnswer: (json['selectedAnswer'] as num?)?.toInt(),
);

Map<String, dynamic> _$QuizAttemptAnswerModelToJson(
  _QuizAttemptAnswerModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'attemptId': instance.attemptId,
  'quizItemId': instance.quizItemId,
  'selectedAnswer': instance.selectedAnswer,
};

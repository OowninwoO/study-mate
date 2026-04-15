// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_submit_answer_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizSubmitAnswerRequestModel _$QuizSubmitAnswerRequestModelFromJson(
  Map<String, dynamic> json,
) => _QuizSubmitAnswerRequestModel(
  quizItemId: json['quizItemId'] as String,
  selectedAnswer: (json['selectedAnswer'] as num?)?.toInt(),
);

Map<String, dynamic> _$QuizSubmitAnswerRequestModelToJson(
  _QuizSubmitAnswerRequestModel instance,
) => <String, dynamic>{
  'quizItemId': instance.quizItemId,
  'selectedAnswer': instance.selectedAnswer,
};

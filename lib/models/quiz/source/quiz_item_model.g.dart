// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizItemModel _$QuizItemModelFromJson(Map<String, dynamic> json) =>
    _QuizItemModel(
      id: json['id'] as String,
      quizSetId: json['quizSetId'] as String,
      questionNumber: (json['questionNumber'] as num).toInt(),
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      answerIndex: (json['answerIndex'] as num).toInt(),
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$QuizItemModelToJson(_QuizItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quizSetId': instance.quizSetId,
      'questionNumber': instance.questionNumber,
      'question': instance.question,
      'options': instance.options,
      'answerIndex': instance.answerIndex,
      'explanation': instance.explanation,
    };

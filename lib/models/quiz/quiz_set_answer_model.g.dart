// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_set_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizSetAnswerModel _$QuizSetAnswerModelFromJson(Map<String, dynamic> json) =>
    _QuizSetAnswerModel(
      quizSetId: json['quizSetId'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => QuizItemAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      solvingTime: (json['solvingTime'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$QuizSetAnswerModelToJson(_QuizSetAnswerModel instance) =>
    <String, dynamic>{
      'quizSetId': instance.quizSetId,
      'answers': instance.answers,
      'solvingTime': instance.solvingTime,
      'createdAt': instance.createdAt.toIso8601String(),
    };

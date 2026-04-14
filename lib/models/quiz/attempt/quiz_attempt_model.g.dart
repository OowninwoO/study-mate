// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_attempt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizAttemptModel _$QuizAttemptModelFromJson(Map<String, dynamic> json) =>
    _QuizAttemptModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      quizSetId: json['quizSetId'] as String,
      solvingTime: (json['solvingTime'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$QuizAttemptModelToJson(_QuizAttemptModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'quizSetId': instance.quizSetId,
      'solvingTime': instance.solvingTime,
      'createdAt': instance.createdAt.toIso8601String(),
    };

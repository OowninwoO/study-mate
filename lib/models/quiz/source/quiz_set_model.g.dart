// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizSetModel _$QuizSetModelFromJson(Map<String, dynamic> json) =>
    _QuizSetModel(
      id: json['id'] as String,
      sourceTitle: json['sourceTitle'] as String,
      category: json['category'] as String,
      quizzes: (json['quizzes'] as List<dynamic>)
          .map((e) => QuizItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$QuizSetModelToJson(_QuizSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceTitle': instance.sourceTitle,
      'category': instance.category,
      'quizzes': instance.quizzes,
      'createdAt': instance.createdAt.toIso8601String(),
    };

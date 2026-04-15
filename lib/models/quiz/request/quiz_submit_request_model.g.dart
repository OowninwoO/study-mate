// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_submit_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizSubmitRequestModel _$QuizSubmitRequestModelFromJson(
  Map<String, dynamic> json,
) => _QuizSubmitRequestModel(
  quizSetId: json['quizSetId'] as String,
  solvingTime: (json['solvingTime'] as num).toInt(),
  answers: (json['answers'] as List<dynamic>)
      .map(
        (e) => QuizSubmitAnswerRequestModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$QuizSubmitRequestModelToJson(
  _QuizSubmitRequestModel instance,
) => <String, dynamic>{
  'quizSetId': instance.quizSetId,
  'solvingTime': instance.solvingTime,
  'answers': instance.answers,
};

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_attempt_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizAttemptAnswerModel {

 String get id; String get attemptId; String get quizItemId; int? get selectedAnswer;
/// Create a copy of QuizAttemptAnswerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAttemptAnswerModelCopyWith<QuizAttemptAnswerModel> get copyWith => _$QuizAttemptAnswerModelCopyWithImpl<QuizAttemptAnswerModel>(this as QuizAttemptAnswerModel, _$identity);

  /// Serializes this QuizAttemptAnswerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAttemptAnswerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptId, attemptId) || other.attemptId == attemptId)&&(identical(other.quizItemId, quizItemId) || other.quizItemId == quizItemId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attemptId,quizItemId,selectedAnswer);

@override
String toString() {
  return 'QuizAttemptAnswerModel(id: $id, attemptId: $attemptId, quizItemId: $quizItemId, selectedAnswer: $selectedAnswer)';
}


}

/// @nodoc
abstract mixin class $QuizAttemptAnswerModelCopyWith<$Res>  {
  factory $QuizAttemptAnswerModelCopyWith(QuizAttemptAnswerModel value, $Res Function(QuizAttemptAnswerModel) _then) = _$QuizAttemptAnswerModelCopyWithImpl;
@useResult
$Res call({
 String id, String attemptId, String quizItemId, int? selectedAnswer
});




}
/// @nodoc
class _$QuizAttemptAnswerModelCopyWithImpl<$Res>
    implements $QuizAttemptAnswerModelCopyWith<$Res> {
  _$QuizAttemptAnswerModelCopyWithImpl(this._self, this._then);

  final QuizAttemptAnswerModel _self;
  final $Res Function(QuizAttemptAnswerModel) _then;

/// Create a copy of QuizAttemptAnswerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attemptId = null,Object? quizItemId = null,Object? selectedAnswer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,quizItemId: null == quizItemId ? _self.quizItemId : quizItemId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: freezed == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizAttemptAnswerModel].
extension QuizAttemptAnswerModelPatterns on QuizAttemptAnswerModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizAttemptAnswerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizAttemptAnswerModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizAttemptAnswerModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizAttemptAnswerModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizAttemptAnswerModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizAttemptAnswerModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String attemptId,  String quizItemId,  int? selectedAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizAttemptAnswerModel() when $default != null:
return $default(_that.id,_that.attemptId,_that.quizItemId,_that.selectedAnswer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String attemptId,  String quizItemId,  int? selectedAnswer)  $default,) {final _that = this;
switch (_that) {
case _QuizAttemptAnswerModel():
return $default(_that.id,_that.attemptId,_that.quizItemId,_that.selectedAnswer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String attemptId,  String quizItemId,  int? selectedAnswer)?  $default,) {final _that = this;
switch (_that) {
case _QuizAttemptAnswerModel() when $default != null:
return $default(_that.id,_that.attemptId,_that.quizItemId,_that.selectedAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizAttemptAnswerModel implements QuizAttemptAnswerModel {
  const _QuizAttemptAnswerModel({required this.id, required this.attemptId, required this.quizItemId, required this.selectedAnswer});
  factory _QuizAttemptAnswerModel.fromJson(Map<String, dynamic> json) => _$QuizAttemptAnswerModelFromJson(json);

@override final  String id;
@override final  String attemptId;
@override final  String quizItemId;
@override final  int? selectedAnswer;

/// Create a copy of QuizAttemptAnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizAttemptAnswerModelCopyWith<_QuizAttemptAnswerModel> get copyWith => __$QuizAttemptAnswerModelCopyWithImpl<_QuizAttemptAnswerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizAttemptAnswerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizAttemptAnswerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptId, attemptId) || other.attemptId == attemptId)&&(identical(other.quizItemId, quizItemId) || other.quizItemId == quizItemId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attemptId,quizItemId,selectedAnswer);

@override
String toString() {
  return 'QuizAttemptAnswerModel(id: $id, attemptId: $attemptId, quizItemId: $quizItemId, selectedAnswer: $selectedAnswer)';
}


}

/// @nodoc
abstract mixin class _$QuizAttemptAnswerModelCopyWith<$Res> implements $QuizAttemptAnswerModelCopyWith<$Res> {
  factory _$QuizAttemptAnswerModelCopyWith(_QuizAttemptAnswerModel value, $Res Function(_QuizAttemptAnswerModel) _then) = __$QuizAttemptAnswerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String attemptId, String quizItemId, int? selectedAnswer
});




}
/// @nodoc
class __$QuizAttemptAnswerModelCopyWithImpl<$Res>
    implements _$QuizAttemptAnswerModelCopyWith<$Res> {
  __$QuizAttemptAnswerModelCopyWithImpl(this._self, this._then);

  final _QuizAttemptAnswerModel _self;
  final $Res Function(_QuizAttemptAnswerModel) _then;

/// Create a copy of QuizAttemptAnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attemptId = null,Object? quizItemId = null,Object? selectedAnswer = freezed,}) {
  return _then(_QuizAttemptAnswerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,quizItemId: null == quizItemId ? _self.quizItemId : quizItemId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: freezed == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

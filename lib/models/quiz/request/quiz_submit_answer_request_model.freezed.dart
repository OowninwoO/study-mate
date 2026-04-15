// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_submit_answer_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizSubmitAnswerRequestModel {

 String get quizItemId; int? get selectedAnswer;
/// Create a copy of QuizSubmitAnswerRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizSubmitAnswerRequestModelCopyWith<QuizSubmitAnswerRequestModel> get copyWith => _$QuizSubmitAnswerRequestModelCopyWithImpl<QuizSubmitAnswerRequestModel>(this as QuizSubmitAnswerRequestModel, _$identity);

  /// Serializes this QuizSubmitAnswerRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizSubmitAnswerRequestModel&&(identical(other.quizItemId, quizItemId) || other.quizItemId == quizItemId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizItemId,selectedAnswer);

@override
String toString() {
  return 'QuizSubmitAnswerRequestModel(quizItemId: $quizItemId, selectedAnswer: $selectedAnswer)';
}


}

/// @nodoc
abstract mixin class $QuizSubmitAnswerRequestModelCopyWith<$Res>  {
  factory $QuizSubmitAnswerRequestModelCopyWith(QuizSubmitAnswerRequestModel value, $Res Function(QuizSubmitAnswerRequestModel) _then) = _$QuizSubmitAnswerRequestModelCopyWithImpl;
@useResult
$Res call({
 String quizItemId, int? selectedAnswer
});




}
/// @nodoc
class _$QuizSubmitAnswerRequestModelCopyWithImpl<$Res>
    implements $QuizSubmitAnswerRequestModelCopyWith<$Res> {
  _$QuizSubmitAnswerRequestModelCopyWithImpl(this._self, this._then);

  final QuizSubmitAnswerRequestModel _self;
  final $Res Function(QuizSubmitAnswerRequestModel) _then;

/// Create a copy of QuizSubmitAnswerRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizItemId = null,Object? selectedAnswer = freezed,}) {
  return _then(_self.copyWith(
quizItemId: null == quizItemId ? _self.quizItemId : quizItemId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: freezed == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizSubmitAnswerRequestModel].
extension QuizSubmitAnswerRequestModelPatterns on QuizSubmitAnswerRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizSubmitAnswerRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizSubmitAnswerRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizSubmitAnswerRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitAnswerRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizSubmitAnswerRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitAnswerRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String quizItemId,  int? selectedAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizSubmitAnswerRequestModel() when $default != null:
return $default(_that.quizItemId,_that.selectedAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String quizItemId,  int? selectedAnswer)  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitAnswerRequestModel():
return $default(_that.quizItemId,_that.selectedAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String quizItemId,  int? selectedAnswer)?  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitAnswerRequestModel() when $default != null:
return $default(_that.quizItemId,_that.selectedAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizSubmitAnswerRequestModel implements QuizSubmitAnswerRequestModel {
  const _QuizSubmitAnswerRequestModel({required this.quizItemId, required this.selectedAnswer});
  factory _QuizSubmitAnswerRequestModel.fromJson(Map<String, dynamic> json) => _$QuizSubmitAnswerRequestModelFromJson(json);

@override final  String quizItemId;
@override final  int? selectedAnswer;

/// Create a copy of QuizSubmitAnswerRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizSubmitAnswerRequestModelCopyWith<_QuizSubmitAnswerRequestModel> get copyWith => __$QuizSubmitAnswerRequestModelCopyWithImpl<_QuizSubmitAnswerRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizSubmitAnswerRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizSubmitAnswerRequestModel&&(identical(other.quizItemId, quizItemId) || other.quizItemId == quizItemId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizItemId,selectedAnswer);

@override
String toString() {
  return 'QuizSubmitAnswerRequestModel(quizItemId: $quizItemId, selectedAnswer: $selectedAnswer)';
}


}

/// @nodoc
abstract mixin class _$QuizSubmitAnswerRequestModelCopyWith<$Res> implements $QuizSubmitAnswerRequestModelCopyWith<$Res> {
  factory _$QuizSubmitAnswerRequestModelCopyWith(_QuizSubmitAnswerRequestModel value, $Res Function(_QuizSubmitAnswerRequestModel) _then) = __$QuizSubmitAnswerRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String quizItemId, int? selectedAnswer
});




}
/// @nodoc
class __$QuizSubmitAnswerRequestModelCopyWithImpl<$Res>
    implements _$QuizSubmitAnswerRequestModelCopyWith<$Res> {
  __$QuizSubmitAnswerRequestModelCopyWithImpl(this._self, this._then);

  final _QuizSubmitAnswerRequestModel _self;
  final $Res Function(_QuizSubmitAnswerRequestModel) _then;

/// Create a copy of QuizSubmitAnswerRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizItemId = null,Object? selectedAnswer = freezed,}) {
  return _then(_QuizSubmitAnswerRequestModel(
quizItemId: null == quizItemId ? _self.quizItemId : quizItemId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: freezed == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

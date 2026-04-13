// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_item_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizItemAnswerModel {

 String get quizItemId; int? get selectedAnswer;
/// Create a copy of QuizItemAnswerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizItemAnswerModelCopyWith<QuizItemAnswerModel> get copyWith => _$QuizItemAnswerModelCopyWithImpl<QuizItemAnswerModel>(this as QuizItemAnswerModel, _$identity);

  /// Serializes this QuizItemAnswerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizItemAnswerModel&&(identical(other.quizItemId, quizItemId) || other.quizItemId == quizItemId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizItemId,selectedAnswer);

@override
String toString() {
  return 'QuizItemAnswerModel(quizItemId: $quizItemId, selectedAnswer: $selectedAnswer)';
}


}

/// @nodoc
abstract mixin class $QuizItemAnswerModelCopyWith<$Res>  {
  factory $QuizItemAnswerModelCopyWith(QuizItemAnswerModel value, $Res Function(QuizItemAnswerModel) _then) = _$QuizItemAnswerModelCopyWithImpl;
@useResult
$Res call({
 String quizItemId, int? selectedAnswer
});




}
/// @nodoc
class _$QuizItemAnswerModelCopyWithImpl<$Res>
    implements $QuizItemAnswerModelCopyWith<$Res> {
  _$QuizItemAnswerModelCopyWithImpl(this._self, this._then);

  final QuizItemAnswerModel _self;
  final $Res Function(QuizItemAnswerModel) _then;

/// Create a copy of QuizItemAnswerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizItemId = null,Object? selectedAnswer = freezed,}) {
  return _then(_self.copyWith(
quizItemId: null == quizItemId ? _self.quizItemId : quizItemId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: freezed == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizItemAnswerModel].
extension QuizItemAnswerModelPatterns on QuizItemAnswerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizItemAnswerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizItemAnswerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizItemAnswerModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizItemAnswerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizItemAnswerModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizItemAnswerModel() when $default != null:
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
case _QuizItemAnswerModel() when $default != null:
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
case _QuizItemAnswerModel():
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
case _QuizItemAnswerModel() when $default != null:
return $default(_that.quizItemId,_that.selectedAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizItemAnswerModel implements QuizItemAnswerModel {
  const _QuizItemAnswerModel({required this.quizItemId, required this.selectedAnswer});
  factory _QuizItemAnswerModel.fromJson(Map<String, dynamic> json) => _$QuizItemAnswerModelFromJson(json);

@override final  String quizItemId;
@override final  int? selectedAnswer;

/// Create a copy of QuizItemAnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizItemAnswerModelCopyWith<_QuizItemAnswerModel> get copyWith => __$QuizItemAnswerModelCopyWithImpl<_QuizItemAnswerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizItemAnswerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizItemAnswerModel&&(identical(other.quizItemId, quizItemId) || other.quizItemId == quizItemId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizItemId,selectedAnswer);

@override
String toString() {
  return 'QuizItemAnswerModel(quizItemId: $quizItemId, selectedAnswer: $selectedAnswer)';
}


}

/// @nodoc
abstract mixin class _$QuizItemAnswerModelCopyWith<$Res> implements $QuizItemAnswerModelCopyWith<$Res> {
  factory _$QuizItemAnswerModelCopyWith(_QuizItemAnswerModel value, $Res Function(_QuizItemAnswerModel) _then) = __$QuizItemAnswerModelCopyWithImpl;
@override @useResult
$Res call({
 String quizItemId, int? selectedAnswer
});




}
/// @nodoc
class __$QuizItemAnswerModelCopyWithImpl<$Res>
    implements _$QuizItemAnswerModelCopyWith<$Res> {
  __$QuizItemAnswerModelCopyWithImpl(this._self, this._then);

  final _QuizItemAnswerModel _self;
  final $Res Function(_QuizItemAnswerModel) _then;

/// Create a copy of QuizItemAnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizItemId = null,Object? selectedAnswer = freezed,}) {
  return _then(_QuizItemAnswerModel(
quizItemId: null == quizItemId ? _self.quizItemId : quizItemId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: freezed == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

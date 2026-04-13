// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_set_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizSetAnswerModel {

 String get quizSetId; List<QuizItemAnswerModel> get answers; int get solvingTime; DateTime get createdAt;
/// Create a copy of QuizSetAnswerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizSetAnswerModelCopyWith<QuizSetAnswerModel> get copyWith => _$QuizSetAnswerModelCopyWithImpl<QuizSetAnswerModel>(this as QuizSetAnswerModel, _$identity);

  /// Serializes this QuizSetAnswerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizSetAnswerModel&&(identical(other.quizSetId, quizSetId) || other.quizSetId == quizSetId)&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.solvingTime, solvingTime) || other.solvingTime == solvingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizSetId,const DeepCollectionEquality().hash(answers),solvingTime,createdAt);

@override
String toString() {
  return 'QuizSetAnswerModel(quizSetId: $quizSetId, answers: $answers, solvingTime: $solvingTime, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $QuizSetAnswerModelCopyWith<$Res>  {
  factory $QuizSetAnswerModelCopyWith(QuizSetAnswerModel value, $Res Function(QuizSetAnswerModel) _then) = _$QuizSetAnswerModelCopyWithImpl;
@useResult
$Res call({
 String quizSetId, List<QuizItemAnswerModel> answers, int solvingTime, DateTime createdAt
});




}
/// @nodoc
class _$QuizSetAnswerModelCopyWithImpl<$Res>
    implements $QuizSetAnswerModelCopyWith<$Res> {
  _$QuizSetAnswerModelCopyWithImpl(this._self, this._then);

  final QuizSetAnswerModel _self;
  final $Res Function(QuizSetAnswerModel) _then;

/// Create a copy of QuizSetAnswerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizSetId = null,Object? answers = null,Object? solvingTime = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
quizSetId: null == quizSetId ? _self.quizSetId : quizSetId // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuizItemAnswerModel>,solvingTime: null == solvingTime ? _self.solvingTime : solvingTime // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizSetAnswerModel].
extension QuizSetAnswerModelPatterns on QuizSetAnswerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizSetAnswerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizSetAnswerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizSetAnswerModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizSetAnswerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizSetAnswerModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizSetAnswerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String quizSetId,  List<QuizItemAnswerModel> answers,  int solvingTime,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizSetAnswerModel() when $default != null:
return $default(_that.quizSetId,_that.answers,_that.solvingTime,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String quizSetId,  List<QuizItemAnswerModel> answers,  int solvingTime,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _QuizSetAnswerModel():
return $default(_that.quizSetId,_that.answers,_that.solvingTime,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String quizSetId,  List<QuizItemAnswerModel> answers,  int solvingTime,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _QuizSetAnswerModel() when $default != null:
return $default(_that.quizSetId,_that.answers,_that.solvingTime,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizSetAnswerModel implements QuizSetAnswerModel {
  const _QuizSetAnswerModel({required this.quizSetId, required final  List<QuizItemAnswerModel> answers, required this.solvingTime, required this.createdAt}): _answers = answers;
  factory _QuizSetAnswerModel.fromJson(Map<String, dynamic> json) => _$QuizSetAnswerModelFromJson(json);

@override final  String quizSetId;
 final  List<QuizItemAnswerModel> _answers;
@override List<QuizItemAnswerModel> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

@override final  int solvingTime;
@override final  DateTime createdAt;

/// Create a copy of QuizSetAnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizSetAnswerModelCopyWith<_QuizSetAnswerModel> get copyWith => __$QuizSetAnswerModelCopyWithImpl<_QuizSetAnswerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizSetAnswerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizSetAnswerModel&&(identical(other.quizSetId, quizSetId) || other.quizSetId == quizSetId)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.solvingTime, solvingTime) || other.solvingTime == solvingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizSetId,const DeepCollectionEquality().hash(_answers),solvingTime,createdAt);

@override
String toString() {
  return 'QuizSetAnswerModel(quizSetId: $quizSetId, answers: $answers, solvingTime: $solvingTime, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$QuizSetAnswerModelCopyWith<$Res> implements $QuizSetAnswerModelCopyWith<$Res> {
  factory _$QuizSetAnswerModelCopyWith(_QuizSetAnswerModel value, $Res Function(_QuizSetAnswerModel) _then) = __$QuizSetAnswerModelCopyWithImpl;
@override @useResult
$Res call({
 String quizSetId, List<QuizItemAnswerModel> answers, int solvingTime, DateTime createdAt
});




}
/// @nodoc
class __$QuizSetAnswerModelCopyWithImpl<$Res>
    implements _$QuizSetAnswerModelCopyWith<$Res> {
  __$QuizSetAnswerModelCopyWithImpl(this._self, this._then);

  final _QuizSetAnswerModel _self;
  final $Res Function(_QuizSetAnswerModel) _then;

/// Create a copy of QuizSetAnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizSetId = null,Object? answers = null,Object? solvingTime = null,Object? createdAt = null,}) {
  return _then(_QuizSetAnswerModel(
quizSetId: null == quizSetId ? _self.quizSetId : quizSetId // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuizItemAnswerModel>,solvingTime: null == solvingTime ? _self.solvingTime : solvingTime // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

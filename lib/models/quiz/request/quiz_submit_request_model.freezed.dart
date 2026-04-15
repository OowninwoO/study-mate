// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_submit_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizSubmitRequestModel {

 String get quizSetId; int get solvingTime; List<QuizSubmitAnswerRequestModel> get answers;
/// Create a copy of QuizSubmitRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizSubmitRequestModelCopyWith<QuizSubmitRequestModel> get copyWith => _$QuizSubmitRequestModelCopyWithImpl<QuizSubmitRequestModel>(this as QuizSubmitRequestModel, _$identity);

  /// Serializes this QuizSubmitRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizSubmitRequestModel&&(identical(other.quizSetId, quizSetId) || other.quizSetId == quizSetId)&&(identical(other.solvingTime, solvingTime) || other.solvingTime == solvingTime)&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizSetId,solvingTime,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'QuizSubmitRequestModel(quizSetId: $quizSetId, solvingTime: $solvingTime, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $QuizSubmitRequestModelCopyWith<$Res>  {
  factory $QuizSubmitRequestModelCopyWith(QuizSubmitRequestModel value, $Res Function(QuizSubmitRequestModel) _then) = _$QuizSubmitRequestModelCopyWithImpl;
@useResult
$Res call({
 String quizSetId, int solvingTime, List<QuizSubmitAnswerRequestModel> answers
});




}
/// @nodoc
class _$QuizSubmitRequestModelCopyWithImpl<$Res>
    implements $QuizSubmitRequestModelCopyWith<$Res> {
  _$QuizSubmitRequestModelCopyWithImpl(this._self, this._then);

  final QuizSubmitRequestModel _self;
  final $Res Function(QuizSubmitRequestModel) _then;

/// Create a copy of QuizSubmitRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizSetId = null,Object? solvingTime = null,Object? answers = null,}) {
  return _then(_self.copyWith(
quizSetId: null == quizSetId ? _self.quizSetId : quizSetId // ignore: cast_nullable_to_non_nullable
as String,solvingTime: null == solvingTime ? _self.solvingTime : solvingTime // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuizSubmitAnswerRequestModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizSubmitRequestModel].
extension QuizSubmitRequestModelPatterns on QuizSubmitRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizSubmitRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizSubmitRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizSubmitRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizSubmitRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String quizSetId,  int solvingTime,  List<QuizSubmitAnswerRequestModel> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizSubmitRequestModel() when $default != null:
return $default(_that.quizSetId,_that.solvingTime,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String quizSetId,  int solvingTime,  List<QuizSubmitAnswerRequestModel> answers)  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitRequestModel():
return $default(_that.quizSetId,_that.solvingTime,_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String quizSetId,  int solvingTime,  List<QuizSubmitAnswerRequestModel> answers)?  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitRequestModel() when $default != null:
return $default(_that.quizSetId,_that.solvingTime,_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizSubmitRequestModel implements QuizSubmitRequestModel {
  const _QuizSubmitRequestModel({required this.quizSetId, required this.solvingTime, required final  List<QuizSubmitAnswerRequestModel> answers}): _answers = answers;
  factory _QuizSubmitRequestModel.fromJson(Map<String, dynamic> json) => _$QuizSubmitRequestModelFromJson(json);

@override final  String quizSetId;
@override final  int solvingTime;
 final  List<QuizSubmitAnswerRequestModel> _answers;
@override List<QuizSubmitAnswerRequestModel> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of QuizSubmitRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizSubmitRequestModelCopyWith<_QuizSubmitRequestModel> get copyWith => __$QuizSubmitRequestModelCopyWithImpl<_QuizSubmitRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizSubmitRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizSubmitRequestModel&&(identical(other.quizSetId, quizSetId) || other.quizSetId == quizSetId)&&(identical(other.solvingTime, solvingTime) || other.solvingTime == solvingTime)&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizSetId,solvingTime,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'QuizSubmitRequestModel(quizSetId: $quizSetId, solvingTime: $solvingTime, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$QuizSubmitRequestModelCopyWith<$Res> implements $QuizSubmitRequestModelCopyWith<$Res> {
  factory _$QuizSubmitRequestModelCopyWith(_QuizSubmitRequestModel value, $Res Function(_QuizSubmitRequestModel) _then) = __$QuizSubmitRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String quizSetId, int solvingTime, List<QuizSubmitAnswerRequestModel> answers
});




}
/// @nodoc
class __$QuizSubmitRequestModelCopyWithImpl<$Res>
    implements _$QuizSubmitRequestModelCopyWith<$Res> {
  __$QuizSubmitRequestModelCopyWithImpl(this._self, this._then);

  final _QuizSubmitRequestModel _self;
  final $Res Function(_QuizSubmitRequestModel) _then;

/// Create a copy of QuizSubmitRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizSetId = null,Object? solvingTime = null,Object? answers = null,}) {
  return _then(_QuizSubmitRequestModel(
quizSetId: null == quizSetId ? _self.quizSetId : quizSetId // ignore: cast_nullable_to_non_nullable
as String,solvingTime: null == solvingTime ? _self.solvingTime : solvingTime // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuizSubmitAnswerRequestModel>,
  ));
}


}

// dart format on

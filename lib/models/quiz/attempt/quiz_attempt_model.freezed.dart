// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_attempt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizAttemptModel {

 String get id; String get userId; String get quizSetId; int get solvingTime; DateTime get createdAt;
/// Create a copy of QuizAttemptModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAttemptModelCopyWith<QuizAttemptModel> get copyWith => _$QuizAttemptModelCopyWithImpl<QuizAttemptModel>(this as QuizAttemptModel, _$identity);

  /// Serializes this QuizAttemptModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAttemptModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.quizSetId, quizSetId) || other.quizSetId == quizSetId)&&(identical(other.solvingTime, solvingTime) || other.solvingTime == solvingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,quizSetId,solvingTime,createdAt);

@override
String toString() {
  return 'QuizAttemptModel(id: $id, userId: $userId, quizSetId: $quizSetId, solvingTime: $solvingTime, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $QuizAttemptModelCopyWith<$Res>  {
  factory $QuizAttemptModelCopyWith(QuizAttemptModel value, $Res Function(QuizAttemptModel) _then) = _$QuizAttemptModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String quizSetId, int solvingTime, DateTime createdAt
});




}
/// @nodoc
class _$QuizAttemptModelCopyWithImpl<$Res>
    implements $QuizAttemptModelCopyWith<$Res> {
  _$QuizAttemptModelCopyWithImpl(this._self, this._then);

  final QuizAttemptModel _self;
  final $Res Function(QuizAttemptModel) _then;

/// Create a copy of QuizAttemptModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? quizSetId = null,Object? solvingTime = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,quizSetId: null == quizSetId ? _self.quizSetId : quizSetId // ignore: cast_nullable_to_non_nullable
as String,solvingTime: null == solvingTime ? _self.solvingTime : solvingTime // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizAttemptModel].
extension QuizAttemptModelPatterns on QuizAttemptModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizAttemptModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizAttemptModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizAttemptModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizAttemptModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizAttemptModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizAttemptModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String quizSetId,  int solvingTime,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizAttemptModel() when $default != null:
return $default(_that.id,_that.userId,_that.quizSetId,_that.solvingTime,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String quizSetId,  int solvingTime,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _QuizAttemptModel():
return $default(_that.id,_that.userId,_that.quizSetId,_that.solvingTime,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String quizSetId,  int solvingTime,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _QuizAttemptModel() when $default != null:
return $default(_that.id,_that.userId,_that.quizSetId,_that.solvingTime,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizAttemptModel implements QuizAttemptModel {
  const _QuizAttemptModel({required this.id, required this.userId, required this.quizSetId, required this.solvingTime, required this.createdAt});
  factory _QuizAttemptModel.fromJson(Map<String, dynamic> json) => _$QuizAttemptModelFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String quizSetId;
@override final  int solvingTime;
@override final  DateTime createdAt;

/// Create a copy of QuizAttemptModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizAttemptModelCopyWith<_QuizAttemptModel> get copyWith => __$QuizAttemptModelCopyWithImpl<_QuizAttemptModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizAttemptModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizAttemptModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.quizSetId, quizSetId) || other.quizSetId == quizSetId)&&(identical(other.solvingTime, solvingTime) || other.solvingTime == solvingTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,quizSetId,solvingTime,createdAt);

@override
String toString() {
  return 'QuizAttemptModel(id: $id, userId: $userId, quizSetId: $quizSetId, solvingTime: $solvingTime, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$QuizAttemptModelCopyWith<$Res> implements $QuizAttemptModelCopyWith<$Res> {
  factory _$QuizAttemptModelCopyWith(_QuizAttemptModel value, $Res Function(_QuizAttemptModel) _then) = __$QuizAttemptModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String quizSetId, int solvingTime, DateTime createdAt
});




}
/// @nodoc
class __$QuizAttemptModelCopyWithImpl<$Res>
    implements _$QuizAttemptModelCopyWith<$Res> {
  __$QuizAttemptModelCopyWithImpl(this._self, this._then);

  final _QuizAttemptModel _self;
  final $Res Function(_QuizAttemptModel) _then;

/// Create a copy of QuizAttemptModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? quizSetId = null,Object? solvingTime = null,Object? createdAt = null,}) {
  return _then(_QuizAttemptModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,quizSetId: null == quizSetId ? _self.quizSetId : quizSetId // ignore: cast_nullable_to_non_nullable
as String,solvingTime: null == solvingTime ? _self.solvingTime : solvingTime // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

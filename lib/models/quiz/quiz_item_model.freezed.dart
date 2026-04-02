// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizItemModel {

 String get question; List<String> get options; int get answerIndex; String get explanation;
/// Create a copy of QuizItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizItemModelCopyWith<QuizItemModel> get copyWith => _$QuizItemModelCopyWithImpl<QuizItemModel>(this as QuizItemModel, _$identity);

  /// Serializes this QuizItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizItemModel&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,const DeepCollectionEquality().hash(options),answerIndex,explanation);

@override
String toString() {
  return 'QuizItemModel(question: $question, options: $options, answerIndex: $answerIndex, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class $QuizItemModelCopyWith<$Res>  {
  factory $QuizItemModelCopyWith(QuizItemModel value, $Res Function(QuizItemModel) _then) = _$QuizItemModelCopyWithImpl;
@useResult
$Res call({
 String question, List<String> options, int answerIndex, String explanation
});




}
/// @nodoc
class _$QuizItemModelCopyWithImpl<$Res>
    implements $QuizItemModelCopyWith<$Res> {
  _$QuizItemModelCopyWithImpl(this._self, this._then);

  final QuizItemModel _self;
  final $Res Function(QuizItemModel) _then;

/// Create a copy of QuizItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? options = null,Object? answerIndex = null,Object? explanation = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,answerIndex: null == answerIndex ? _self.answerIndex : answerIndex // ignore: cast_nullable_to_non_nullable
as int,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizItemModel].
extension QuizItemModelPatterns on QuizItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizItemModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String question,  List<String> options,  int answerIndex,  String explanation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizItemModel() when $default != null:
return $default(_that.question,_that.options,_that.answerIndex,_that.explanation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String question,  List<String> options,  int answerIndex,  String explanation)  $default,) {final _that = this;
switch (_that) {
case _QuizItemModel():
return $default(_that.question,_that.options,_that.answerIndex,_that.explanation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String question,  List<String> options,  int answerIndex,  String explanation)?  $default,) {final _that = this;
switch (_that) {
case _QuizItemModel() when $default != null:
return $default(_that.question,_that.options,_that.answerIndex,_that.explanation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizItemModel implements QuizItemModel {
  const _QuizItemModel({required this.question, required final  List<String> options, required this.answerIndex, required this.explanation}): _options = options;
  factory _QuizItemModel.fromJson(Map<String, dynamic> json) => _$QuizItemModelFromJson(json);

@override final  String question;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  int answerIndex;
@override final  String explanation;

/// Create a copy of QuizItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizItemModelCopyWith<_QuizItemModel> get copyWith => __$QuizItemModelCopyWithImpl<_QuizItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizItemModel&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,const DeepCollectionEquality().hash(_options),answerIndex,explanation);

@override
String toString() {
  return 'QuizItemModel(question: $question, options: $options, answerIndex: $answerIndex, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class _$QuizItemModelCopyWith<$Res> implements $QuizItemModelCopyWith<$Res> {
  factory _$QuizItemModelCopyWith(_QuizItemModel value, $Res Function(_QuizItemModel) _then) = __$QuizItemModelCopyWithImpl;
@override @useResult
$Res call({
 String question, List<String> options, int answerIndex, String explanation
});




}
/// @nodoc
class __$QuizItemModelCopyWithImpl<$Res>
    implements _$QuizItemModelCopyWith<$Res> {
  __$QuizItemModelCopyWithImpl(this._self, this._then);

  final _QuizItemModel _self;
  final $Res Function(_QuizItemModel) _then;

/// Create a copy of QuizItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? options = null,Object? answerIndex = null,Object? explanation = null,}) {
  return _then(_QuizItemModel(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,answerIndex: null == answerIndex ? _self.answerIndex : answerIndex // ignore: cast_nullable_to_non_nullable
as int,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

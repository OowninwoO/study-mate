// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailModel {

 int get id;@JsonKey(name: 'firebase_uid') String get firebaseUid; String? get provider; String? get email;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'profile_image_url') String? get profileImageUrl;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailModelCopyWith<UserDetailModel> get copyWith => _$UserDetailModelCopyWithImpl<UserDetailModel>(this as UserDetailModel, _$identity);

  /// Serializes this UserDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firebaseUid,provider,email,displayName,profileImageUrl,createdAt,updatedAt);

@override
String toString() {
  return 'UserDetailModel(id: $id, firebaseUid: $firebaseUid, provider: $provider, email: $email, displayName: $displayName, profileImageUrl: $profileImageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserDetailModelCopyWith<$Res>  {
  factory $UserDetailModelCopyWith(UserDetailModel value, $Res Function(UserDetailModel) _then) = _$UserDetailModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'firebase_uid') String firebaseUid, String? provider, String? email,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'profile_image_url') String? profileImageUrl,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$UserDetailModelCopyWithImpl<$Res>
    implements $UserDetailModelCopyWith<$Res> {
  _$UserDetailModelCopyWithImpl(this._self, this._then);

  final UserDetailModel _self;
  final $Res Function(UserDetailModel) _then;

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firebaseUid = null,Object? provider = freezed,Object? email = freezed,Object? displayName = freezed,Object? profileImageUrl = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firebaseUid: null == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDetailModel].
extension UserDetailModelPatterns on UserDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'firebase_uid')  String firebaseUid,  String? provider,  String? email, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'profile_image_url')  String? profileImageUrl, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
return $default(_that.id,_that.firebaseUid,_that.provider,_that.email,_that.displayName,_that.profileImageUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'firebase_uid')  String firebaseUid,  String? provider,  String? email, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'profile_image_url')  String? profileImageUrl, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserDetailModel():
return $default(_that.id,_that.firebaseUid,_that.provider,_that.email,_that.displayName,_that.profileImageUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'firebase_uid')  String firebaseUid,  String? provider,  String? email, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'profile_image_url')  String? profileImageUrl, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailModel() when $default != null:
return $default(_that.id,_that.firebaseUid,_that.provider,_that.email,_that.displayName,_that.profileImageUrl,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetailModel extends UserDetailModel {
  const _UserDetailModel({required this.id, @JsonKey(name: 'firebase_uid') required this.firebaseUid, this.provider, this.email, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'profile_image_url') this.profileImageUrl, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): super._();
  factory _UserDetailModel.fromJson(Map<String, dynamic> json) => _$UserDetailModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'firebase_uid') final  String firebaseUid;
@override final  String? provider;
@override final  String? email;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'profile_image_url') final  String? profileImageUrl;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailModelCopyWith<_UserDetailModel> get copyWith => __$UserDetailModelCopyWithImpl<_UserDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firebaseUid,provider,email,displayName,profileImageUrl,createdAt,updatedAt);

@override
String toString() {
  return 'UserDetailModel(id: $id, firebaseUid: $firebaseUid, provider: $provider, email: $email, displayName: $displayName, profileImageUrl: $profileImageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserDetailModelCopyWith<$Res> implements $UserDetailModelCopyWith<$Res> {
  factory _$UserDetailModelCopyWith(_UserDetailModel value, $Res Function(_UserDetailModel) _then) = __$UserDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'firebase_uid') String firebaseUid, String? provider, String? email,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'profile_image_url') String? profileImageUrl,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$UserDetailModelCopyWithImpl<$Res>
    implements _$UserDetailModelCopyWith<$Res> {
  __$UserDetailModelCopyWithImpl(this._self, this._then);

  final _UserDetailModel _self;
  final $Res Function(_UserDetailModel) _then;

/// Create a copy of UserDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firebaseUid = null,Object? provider = freezed,Object? email = freezed,Object? displayName = freezed,Object? profileImageUrl = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firebaseUid: null == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

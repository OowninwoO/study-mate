import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

sealed class UserModelBase {
  const UserModelBase();
}

class UserLoadingModel extends UserModelBase {
  const UserLoadingModel();
}

class UserNoneModel extends UserModelBase {
  const UserNoneModel();
}

@freezed
abstract class UserDetailModel extends UserModelBase with _$UserDetailModel {
  const UserDetailModel._();

  const factory UserDetailModel({
    required int id,
    @JsonKey(name: 'firebase_uid') required String firebaseUid,
    String? provider,
    String? email,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}

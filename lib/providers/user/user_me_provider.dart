import 'package:flutter_riverpod/legacy.dart';
import 'package:study_mate/api/main/user/user_api.dart';
import 'package:study_mate/models/user/user_model.dart';
import 'package:study_mate/services/auth_service.dart';

final userMeProvider = StateNotifierProvider<UserMeProvider, UserModelBase>((
  ref,
) {
  return UserMeProvider();
});

class UserMeProvider extends StateNotifier<UserModelBase> {
  UserMeProvider() : super(const UserLoadingModel());

  Future<void> signInWithGoogle() async {
    await AuthService.signInWithGoogle();

    final res = await UserApi.login();
    state = UserDetailModel.fromJson(res['data']);
  }

  Future<void> autoLogin() async {
    try {
      if (AuthService.currentUser == null) {
        state = const UserNoneModel();
        return;
      }

      final res = await UserApi.login();
      state = UserDetailModel.fromJson(res['data']);
    } catch (e) {
      state = const UserNoneModel();
    }
  }

  Future<void> signOut() async {
    await AuthService.signOut();
    state = const UserNoneModel();
  }

  void clear() {
    state = const UserNoneModel();
  }
}

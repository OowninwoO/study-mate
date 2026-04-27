import 'package:flutter_riverpod/legacy.dart';
import 'package:study_mate/api/main/user/user_api.dart';
import 'package:study_mate/models/user/user_model.dart';
import 'package:study_mate/services/auth_service.dart';

final userMeProvider = StateNotifierProvider<UserMeProvider, UserModel?>((ref) {
  return UserMeProvider();
});

class UserMeProvider extends StateNotifier<UserModel?> {
  UserMeProvider() : super(null);

  Future<void> signInWithGoogle() async {
    await AuthService.signInWithGoogle();

    final res = await UserApi.login();
    state = UserModel.fromJson(res['data']);
  }

  Future<void> signOut() async {
    await AuthService.signOut();
    state = null;
  }

  void clear() {
    state = null;
  }
}

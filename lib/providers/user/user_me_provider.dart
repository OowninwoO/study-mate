import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_mate/api/main/user/user_api.dart';
import 'package:study_mate/models/user/user_model.dart';
import 'package:study_mate/services/auth_service.dart';

final userMeProvider = AsyncNotifierProvider<UserMeProvider, UserModel?>(
  UserMeProvider.new,
);

class UserMeProvider extends AsyncNotifier<UserModel?> {
  @override
  Future<UserModel?> build() async {
    if (AuthService.currentUser == null) return null;

    final res = await UserApi.login();
    return UserModel.fromJson(res['data']);
  }

  Future<void> signInWithGoogle() async {
    await AuthService.signInWithGoogle();

    final res = await UserApi.login();
    state = AsyncValue.data(UserModel.fromJson(res['data']));
  }

  Future<void> signOut() async {
    await AuthService.signOut();
    state = const AsyncValue.data(null);
  }
}

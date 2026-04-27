import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:study_mate/api/main/user/user_api.dart';

class AuthService {
  static final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static Future<String?> get idToken async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) return null;

    return currentUser.getIdToken();
  }

  static Future<void> signInWithGoogle() async {
    await _googleSignIn.initialize();
    final googleUser = await _googleSignIn.authenticate();
    final googleAuth = googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    await _firebaseAuth.signInWithCredential(credential);
    await UserApi.login();
  }

  static Future<void> signOut() async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) return;
    if (currentUser.providerData.isEmpty) return;

    final providerId = currentUser.providerData.first.providerId;

    await _firebaseAuth.signOut();

    switch (providerId) {
      case 'google.com':
        await _googleSignIn.signOut();
        return;
      default:
        return;
    }
  }
}
